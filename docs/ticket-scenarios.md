# Service desk ticket scenarios

Use these ten scenarios to exercise the GLPI workflow. All users, devices and events must be fictional. For each ticket, record the ticket ID, category, priority, assignment, asset, troubleshooting notes, resolution and closure evidence.

| # | Scenario | Type | Suggested priority | Demonstration |
|---|---|---|---|---|
| 1 | Employee cannot sign in | Incident | High if work is blocked | Verify identity, inspect account state, unlock/reset only after approval, validate sign-in |
| 2 | Printer not printing | Incident | Normal | Check connectivity, queue, paper/toner and test page |
| 3 | Laptop storage nearly full | Incident | Normal | Check disk usage and safe cleanup options; protect user data |
| 4 | Microsoft 365 access issue | Incident | High if multiple users affected | Establish scope, check service status and account/licence assignment, escalate tenant faults |
| 5 | Shared folder access request | Request | Normal | Verify owner approval, apply group-based access, validate effective permissions |
| 6 | Suspicious sign-in reported | Security incident | Urgent | Preserve details and escalate promptly; do not exceed authorisation |
| 7 | New employee onboarding | Request | Scheduled | Track approvals, account, groups, device, asset assignment and handover |
| 8 | Employee offboarding | Request | High / time-bound | Confirm authorised time, disable access, recover assets and record completion |
| 9 | Wi-Fi connectivity issue | Incident | Normal | Determine single-user vs widespread impact; check adapter and connectivity |
| 10 | Endpoint update failure | Incident | Normal | Check update status, free space, reboot state and error code; validate remediation |

## Ticket workflow
1. **New:** Request logged with summary and impact.
2. **Triage:** Confirm requester, affected service/asset, urgency and category.
3. **Assigned:** Route to responsible technician/team.
4. **In progress:** Record checks and user communications chronologically.
5. **Pending:** Waiting for user, approval, vendor or maintenance; state the dependency.
6. **Resolved:** Record fix/fulfilment and validation.
7. **Closed:** Confirm user can proceed or close according to policy.

Use actual GLPI status names and features in the deployed version; document differences.

## Minimum ticket record
- Specific title and fictional requester.
- Category and incident/request type.
- Impact, urgency and priority.
- Affected asset or service.
- Assigned technician.
- Timeline of checks and communications.
- Approval reference where required.
- Resolution, validation and closure date.

A ticket that says only "fixed" is weak evidence. Explain what was checked, what changed, why it was safe and how the result was verified. Never fabricate ticket IDs, timestamps, screenshots or outcomes.
