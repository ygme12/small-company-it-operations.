# Small-Company IT Operations Lab

A practical IT operations portfolio project for a fictional 15-person consulting company. It demonstrates internal support, endpoint and asset administration, identity lifecycle, routine automation, incident troubleshooting and operational reporting.

## Scenario

Murzilli Consulting is modelled as a 15-employee company with a small IT function. The technician handles day-to-day support, basic systems administration, onboarding/offboarding coordination, asset records and escalation of security-sensitive events.

## Objectives

- Operate a central helpdesk with a clear ticket lifecycle.
- Record company devices and associate assets with users and tickets.
- Standardise employee onboarding and offboarding.
- Automate repeatable, low-risk Windows administration tasks with PowerShell.
- Document troubleshooting procedures and escalation boundaries.
- Produce monthly service-desk and asset reports.

## Technology

| Area | Technology | Purpose |
|---|---|---|
| Service desk | GLPI | Requests, incidents, priorities, assignment, SLAs and reporting |
| Asset inventory | GLPI + GLPI Agent | Hardware/software inventory and ticket-to-asset relationships |
| Windows infrastructure | Windows Server 2025 | Lab identity and infrastructure services |
| Identity | Active Directory Domain Services | Users, groups, OUs and account lifecycle |
| Automation | PowerShell | Repeatable administration and validation |
| Cloud infrastructure | Microsoft Azure | VM, networking, RBAC and monitoring practice |
| Linux support | Ubuntu Server | Supporting service and troubleshooting practice |
| Documentation | Markdown + GitHub | Runbooks, evidence and change history |

**Environment boundary:** The Azure-hosted Windows Server 2025 environment and any separate physical Windows Server 2022 lab must be documented independently. Do not mix their IP addresses, domain details, screenshots or implementation claims.

## Scope

### Service desk
Ticket intake, categorisation, prioritisation, assignment, status tracking, internal notes, user updates, resolution, closure, asset association and basic SLA tracking. Work through the [ten ticket scenarios](docs/ticket-scenarios.md).

### Endpoint and asset operations
Maintain an asset register for laptops, desktops, monitors and peripherals. Record asset tag, hostname, OS, serial number, owner, status and assignment history. Use GLPI Agent where supported.

### Identity lifecycle
Define a simple OU and group structure; document joiner, mover and leaver procedures; apply least privilege; verify access removal during offboarding. Use test accounts only.

### PowerShell
Create safe, parameterised scripts for account checks, inventory export and operational validation. Include input validation, logging, error handling and dry-run support for state-changing actions.

### Operations documentation
Maintain troubleshooting runbooks, access request and approval procedures, change records and monthly reporting.

## Repository map

```text
.
├── README.md
├── architecture/
├── docs/
├── powershell/
├── runbooks/
├── evidence/
└── reports/
```

## Implementation sequence

1. Document lab topology and environment boundaries.
2. Deploy/configure GLPI and create the service catalogue.
3. Add assets and configure inventory collection.
4. Configure the test identity environment and lifecycle procedures.
5. Implement and test PowerShell operational scripts.
6. Complete the ten ticket scenarios and capture evidence.
7. Produce a monthly service-desk report and lessons learned.

## Evidence standard

For each implemented task, record the objective, environment, configuration/commands (without secrets), sanitised screenshot or output, validation performed, issues encountered and resolution. A screenshot alone is not proof of a working service.

## Safety and privacy

- Use fictional users and test data only.
- Never commit passwords, API keys, tokens, private keys, connection strings or real personal data.
- Sanitise screenshots: redact usernames, email addresses, serial numbers, tenant identifiers and secrets.
- Do not expose GLPI publicly without access controls and TLS.
- Confirm a script's target and impact before running it; use dry-run modes first.
