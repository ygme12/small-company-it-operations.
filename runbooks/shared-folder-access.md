# Runbook: shared folder access

## Triage
1. Confirm user, device, share path and exact error.
2. Establish whether one user or multiple users are affected.
3. Determine whether this is a new request or regression.
4. Check for an approved access request and identify the data owner.

## Checks
- Confirm network/VPN connectivity and name resolution.
- Confirm the share path is correct.
- Check effective group membership.
- Review share and NTFS permissions through an authorised account.
- Check whether the resource is available to other authorised users.

## Resolution
Do not grant access without resource-owner/manager approval. Prefer role-based groups over individual permissions. Apply least privilege (read vs modify), validate using the affected test account and record the approval and permission change.

## Escalate when
- Permissions conflict or inheritance is unclear.
- Sensitive data is involved.
- Broad access is requested.
- Multiple users cannot reach the share.

Never include confidential file contents or real user data in public evidence.
