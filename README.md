# Northbridge Consulting — IT Operations Portfolio

A practical IT operations portfolio built around a fictional 15-person consulting company. The project brings together service-desk workflows, endpoint and asset administration, identity lifecycle procedures, automation, incident handling, troubleshooting and operational reporting.

## Project scenario

Northbridge Consulting is a fictional 15-employee organisation supported by a small IT function. The portfolio models the day-to-day work of an IT operations technician: handling employee requests, maintaining asset records, administering accounts, troubleshooting endpoints and documenting repeatable processes.

## What the portfolio covers

| Area | Deliverables |
|---|---|
| Service desk | GLPI installation and configuration guidance, ticket categories, priorities, workflows and lifecycle scenarios |
| Asset management | 15-device asset register, inventory procedure and GLPI Agent collection approach |
| Identity and access | Active Directory OU/group design, account management, onboarding and offboarding checklists |
| Windows administration | PowerShell scripts for user creation, disabling accounts, user information, inventory collection and system health |
| Linux administration | Linux health-check script and Linux troubleshooting guide |
| Endpoint support | Windows, macOS and Linux troubleshooting guides |
| Networking | Network architecture, segmentation and troubleshooting documentation |
| Incident management | Incident examples, reusable incident template and resolution-record structure |
| IT operations | IT policies, device-management procedures, monthly operations report and demonstration script |

## Technology

- **GLPI** — service desk and asset management
- **Windows Server / Active Directory / DNS** — identity and Windows infrastructure administration
- **PowerShell** — repeatable Windows administration tasks
- **Ubuntu Server / Bash** — Linux service administration and health checks
- **Microsoft Azure** — cloud infrastructure and network design
- **GitHub / Markdown / CSV** — versioned documentation, procedures and asset records

## Repository guide

- `architecture/` — infrastructure overview, system architecture and network design
- `glpi-ticketing/` — GLPI installation, configuration and ticket workflows
- `asset-management/` — asset register and inventory procedure
- `onboarding-offboarding/` — account lifecycle procedures and checklists
- `powershell/` — Windows administration scripts
- `linux-scripts/` — Linux health-check script
- `troubleshooting/` — Windows, macOS, Linux and networking guides
- `incident-management/` — incident examples and reusable records
- `documentation/` — IT policies and operating procedures
- `reports/` — IT operations reporting template
- `PROJECT-TRACKER.md` — working checklist for the implementation guide
- `RUNBOOK.md` — ordered technical guide for building and validating the lab

## Lab environment

The lab uses an existing Windows Server domain controller identified in the runbook as `YG-DC01`. The fictional company domain is `northbridge.lab`; substitute the actual lab domain where the runbook instructs. The Azure and local lab environments must be documented separately.

## How to review the project

Start with `RUNBOOK.md` for the end-to-end build sequence, then review the individual folders for the procedures, scripts, architecture documents and operational templates. The tracker is an internal implementation aid; it is not a summary of portfolio deliverables.

## Security and evidence

- Use fictional employee records and test data.
- Never commit passwords, keys, tokens, private keys or real personal data.
- Redact IP addresses, subscription identifiers, tenant identifiers and personal information from evidence.
- Review scripts before execution and test state-changing operations in an isolated lab.
- Distinguish documented procedures from actions actually executed in the lab when describing implementation experience.
