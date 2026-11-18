# Lab architecture

## Design principles
- Keep the service desk, identity lab and cloud infrastructure clearly documented.
- Separate Azure Windows Server 2025 from any physical Windows Server 2022 environment.
- Use private networking and least privilege.
- Use fictional identities and non-production data.
- Publish only sanitised configuration values.

## Logical components

```text
        15 fictional employees
                 |
          Support requests
                 |
           +-----------+
           |   GLPI    |
           | Tickets + |
           | Inventory |
           +-----+-----+
                 |
            GLPI Agent
                 |
       +---------+---------+
       |                   |
 Windows endpoints     Ubuntu endpoint
       |
 Identity / directory
       |
 Windows Server 2025 (Azure lab)
 - AD DS / DNS as configured
 - Test users, OUs and groups
 - PowerShell administration

 Separate environment (if used):
 Physical Windows Server 2022 lab
 - Document independently
 - Do not reuse Azure topology assumptions
```

This is a logical design, not a claim that every component is deployed.

## Environment register

Complete with actual, sanitised values as the lab is built.

| Environment | Platform | Purpose | Network/domain | Status |
|---|---|---|---|---|
| Azure lab | Windows Server 2025 VM | Cloud identity/infrastructure practice | Record actual private subnet and test domain | Planned / validate |
| Endpoint lab | Windows client VM/device | Domain join, support and inventory | Record actual network | Planned |
| Linux lab | Ubuntu Server VM | Linux support and service checks | Record actual network | Planned |
| Separate physical lab | Windows Server 2022 | Independent practice | Separate values and documentation | Separate |

## Network and security notes

Document the Azure region and VM size, VNet/subnet CIDRs, NIC/private IP and DNS configuration, NSG rules and rationale, administrative access method and RBAC assignments, monitoring/alerts, backup/snapshot approach and teardown plan.

Never publish credentials, private keys or tenant secrets. Avoid opening management ports broadly to the internet. Prefer controlled administrative access and restrict source addresses.

## Validation checklist
- [ ] Confirm VM is running and reachable through the intended management path.
- [ ] Confirm IP configuration and DNS resolution.
- [ ] Confirm only required network ports are allowed.
- [ ] Confirm administrative roles follow least privilege.
- [ ] Confirm time synchronisation.
- [ ] Confirm monitoring is collecting useful signals.
- [ ] Capture sanitised screenshots and command output.
- [ ] Record shutdown/deallocation and cost-control steps.
