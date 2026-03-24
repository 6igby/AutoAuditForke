<!--
  ENGINE PR TEMPLATE — AutoAudit
  Use this for: collectors, OPA policies, Celery tasks, registry, metadata
-->

## What changed
<!-- Plain-English summary of what this PR adds or modifies in the engine. -->


## Why it changed
<!-- Motivation: new collector needed, policy fix, coverage gap, etc. Link to issue/ticket. -->

Closes #

## Collector / Policy details

**Collector name(s):** <!-- e.g. exchange.organization.organization_config -->

**Framework(s) targeted:** <!-- CIS / Essential 8 / NIST — tick all that apply -->
- [ ] CIS
- [ ] Essential 8
- [ ] NIST

**Graph API / PowerShell permissions required:**
<!-- List any new Microsoft Graph or Exchange permissions this collector needs -->


## Engine integration checklist
These steps are required for every completed collector. Tick each one before requesting review.

- [ ] `engine/collectors/` — collector file created/updated
- [ ] `engine/registry.py` — collector registered with its dotted-path name
- [ ] `engine/policies/` — corresponding `.rego` policy file created/updated
- [ ] Rego policy has YAML metadata annotations (`control_id`, `framework`, `severity`, `required_permissions`)
- [ ] `metadata.json` updated to include the new control(s)
- [ ] Controls documentation updated (`/docs/` or inline comments)
- [ ] Collector tested locally against a real or mocked Graph API response

## Testing evidence
<!-- Paste output from the collector test script or pytest run -->

```bash
uv run python -m scripts.test_collector -c <collector.name> --use-service http://localhost:8001
```

```
# Paste output here
```

## OPA policy test
<!-- Confirm the policy evaluates correctly for both pass and fail cases -->

- [ ] Policy returns `allow = true` on compliant input
- [ ] Policy returns `allow = false` on non-compliant input
- [ ] Edge cases handled (missing fields, null values)

## Security impact
<!-- Does this collector handle sensitive tenant credentials or expose new data? -->


## Rollback plan
<!-- e.g. revert commit, remove entry from registry.py, policies are stateless so no DB migration needed -->


---

## PR hygiene checklist
- [ ] Branch was created from `main` and follows naming convention (`feature/...` or `hotfix/...`)
- [ ] Latest `main` has been merged into this branch before requesting review (`git merge main`)
- [ ] PR targets `main`
- [ ] PR covers one collector or one tightly related group of policies — split if larger
- [ ] No secrets or tenant credentials committed
- [ ] CI checks passing
