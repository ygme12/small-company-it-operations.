# Runbook: account lockout or sign-in failure

## Purpose
Restore an authorised user's access while avoiding unnecessary password or account changes.

## Triage
1. Confirm identity using the approved verification process.
2. Record exact error, time, affected device and whether others are affected.
3. Determine whether the account is locked, disabled, expired or has a password issue.
4. Check for recent password changes or stale credentials on another device/service.

## Troubleshooting
- Check account state using the authorised directory console or approved PowerShell tools.
- Review relevant authentication events where permitted.
- Identify repeated attempts from stale mapped drives, scheduled tasks, mobile devices or services.
- Never disclose passwords or ask the user to send them.

## Resolution
Unlock or reset only after identity verification and required approval. Use the approved secure reset process. Have the user sign in and confirm access. Record cause, action, validation and remaining risk in the ticket.

## Escalate when
- Multiple accounts are affected.
- There are unexplained repeated failures or signs of credential abuse.
- A privileged account is involved.
- A wider identity/domain outage is suspected.

Record timestamps, relevant event IDs, affected test account, action and successful validation. Sanitise identifiers before publishing.
