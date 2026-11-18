[CmdletBinding()]
param(
    [Parameter()]
    [string]$TargetHost,

    [Parameter()]
    [string]$DnsServer
)

$ErrorActionPreference = 'Stop'

function Write-Section {
    param([Parameter(Mandatory)][string]$Title)
    Write-Host ""
    Write-Host "=== $Title ===" -ForegroundColor Cyan
}

Write-Section -Title "Host"
try {
    $computer = Get-CimInstance -ClassName Win32_ComputerSystem
    $os = Get-CimInstance -ClassName Win32_OperatingSystem
    [pscustomobject]@{
        ComputerName = $computer.Name
        Domain       = $computer.Domain
        Manufacturer = $computer.Manufacturer
        Model        = $computer.Model
        OS           = $os.Caption
        Version      = $os.Version
        LastBoot     = $os.LastBootUpTime
    } | Format-List
}
catch {
    Write-Warning ("Unable to collect host details: " + $_.Exception.Message)
}

Write-Section -Title "Network configuration"
try {
    Get-NetIPConfiguration |
        Select-Object InterfaceAlias,
            @{Name='IPv4';Expression={($_.IPv4Address.IPAddress -join ', ')}},
            @{Name='Gateway';Expression={($_.IPv4DefaultGateway.NextHop -join ', ')}},
            @{Name='DnsServers';Expression={($_.DNSServer.ServerAddresses -join ', ')}} |
        Format-Table -AutoSize
}
catch {
    Write-Warning ("Unable to collect network configuration: " + $_.Exception.Message)
}

Write-Section -Title "Disk capacity"
try {
    Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" |
        Select-Object DeviceID,
            @{Name='SizeGB';Expression={[math]::Round($_.Size / 1GB, 2)}},
            @{Name='FreeGB';Expression={[math]::Round($_.FreeSpace / 1GB, 2)}},
            @{Name='FreePercent';Expression={if ($_.Size) {[math]::Round(($_.FreeSpace / $_.Size) * 100, 1)} else {$null}}} |
        Format-Table -AutoSize
}
catch {
    Write-Warning ("Unable to collect disk information: " + $_.Exception.Message)
}

if ($DnsServer) {
    Write-Section -Title "DNS server reachability"
    try {
        Test-NetConnection -ComputerName $DnsServer -Port 53 -WarningAction SilentlyContinue |
            Select-Object ComputerName, RemoteAddress, RemotePort, TcpTestSucceeded |
            Format-List
    }
    catch {
        Write-Warning ("DNS connectivity test failed: " + $_.Exception.Message)
    }
}

if ($TargetHost) {
    Write-Section -Title "Target connectivity and name resolution"
    try {
        Resolve-DnsName -Name $TargetHost -ErrorAction Stop |
            Select-Object Name, Type, IPAddress |
            Format-Table -AutoSize
    }
    catch {
        Write-Warning ("DNS resolution failed for target: " + $_.Exception.Message)
    }

    try {
        Test-NetConnection -ComputerName $TargetHost -WarningAction SilentlyContinue |
            Select-Object ComputerName, RemoteAddress, PingSucceeded |
            Format-List
    }
    catch {
        Write-Warning ("Connectivity test failed: " + $_.Exception.Message)
    }
}

Write-Host ""
Write-Host "Baseline checks completed. This script made no configuration changes." -ForegroundColor Green
