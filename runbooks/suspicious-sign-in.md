# Runbook: suspicious sign-in report

## Priority
Treat an unrecognised or suspicious sign-in as a security-related incident. Follow the organisation's incident response policy and escalate promptly to the designated security contact.

## Initial handling
1. Record reporter, affected test account, reported time and time zone.
2. Capture alert/user-reported details without altering original evidence.
3. Ask whether the user recognises the activity; never ask for their password.
4. Record available context such as source location/device, application and MFA prompts.
5. Preserve relevant logs according to the approved retention process.

## Escalation
- Notify the authorised security/incident response contact immediately.
- Do not delete logs, wipe devices or make broad containment changes unless explicitly authorised.
- Follow the incident lead's instructions for password reset, session revocation, account disablement or device isolation.
- Record actions, approvals and timestamps.

Close the service ticket only when the incident owner confirms the support handoff is complete. The security incident may remain open separately.

Use synthetic data only in public evidence. Redact usernames, IP addresses, tenant identifiers, tokens and sensitive details.
