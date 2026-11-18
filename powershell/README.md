# PowerShell operations scripts

Scripts in this folder are intended for a controlled lab environment.

## Standards
- Use approved, least-privileged accounts.
- Validate parameters and targets before changing state.
- Prefer read-only checks by default.
- Add `-WhatIf` support to scripts that modify state.
- Use timestamped logs where appropriate.
- Handle errors explicitly and return meaningful exit codes.
- Never hard-code credentials or secrets.
- Test on disposable accounts and VMs before wider use.

## Current script: Test-OperationsBaseline.ps1

Performs read-only checks of the local Windows host, including hostname, OS, uptime, IP configuration, DNS configuration and basic reachability to an optional target.

```powershell
.\Test-OperationsBaseline.ps1
.\Test-OperationsBaseline.ps1 -TargetHost "server01.example.test"
.\Test-OperationsBaseline.ps1 -TargetHost "server01.example.test" -DnsServer "10.0.0.4"
```

The script does not change system configuration. Review output before attaching it to a ticket or report, and sanitise internal names/IP addresses before publishing.
