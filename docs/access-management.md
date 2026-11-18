# Access management procedure

## Purpose
Ensure access to systems, shared folders and applications is requested, approved, granted and reviewed in a controlled, auditable way.

## Request requirements
Every request must state:
- Requester and beneficiary.
- System, folder or resource.
- Exact access required (read, modify, administer, etc.).
- Business reason.
- Start date and expiry date, where applicable.
- Manager or data-owner approval.
- Related ticket or change reference.

## Fulfilment
1. Validate that the request is complete.
2. Confirm approval by the appropriate manager/resource owner.
3. Check whether an existing role-based group meets the requirement.
4. Grant the minimum access needed.
5. Record the group/permission change and operator.
6. Ask the requester to validate access.
7. Close the ticket with evidence.

## Review and removal
- Review privileged and sensitive access periodically.
- Remove access when the business need ends.
- Include access removal in mover/leaver workflows.
- Investigate unexpected group membership or permission changes.
- Escalate requests for broad administrative rights.

Emergency access must have a clear reason, authorised approver, time limit and post-event review. Do not create undocumented permanent exceptions.

## Lab test cases
- [ ] User requests read-only access to a shared folder.
- [ ] User requests modify access without approval (should remain pending).
- [ ] User changes department and old access is removed.
- [ ] Leaver account is disabled at the approved time.
- [ ] Privileged group membership is reviewed and justified.

Use fictional users and resources only.
