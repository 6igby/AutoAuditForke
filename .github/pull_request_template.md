<!--
  DEFAULT PR TEMPLATE — AutoAudit
  Use a specific template for engine/frontend/backend/security/devops work:
  ?template=engine.md | frontend.md | backend.md | security.md | devops.md
-->

> **Using the right template?**
> If your PR is specific to one area, swap this template for a more detailed one by editing the URL:
> - Engine (collectors / policies): `?template=engine.md`
> - Frontend: `?template=frontend.md`
> - Backend API: `?template=backend.md`
> - Security module: `?template=security.md`
> - DevOps / infrastructure: `?template=devops.md`
>
> Replace the end of the URL with the above, then reload the page. Delete this block once you've chosen.

## What changed
<!-- A clear, plain-English summary of what this PR does. One paragraph max. -->


## Why it changed
<!-- The motivation: bug fix, new feature, tech debt, requirement, etc. Link to any issue/ticket. -->

Closes #

## Module(s) touched
<!-- Tick all that apply — if you've ticked more than one, consider splitting the PR -->
- [ ] Engine (collectors / OPA policies)
- [ ] Backend API
- [ ] Frontend
- [ ] Security (Evidence Assistant / TPRM)
- [ ] DevOps / Infrastructure
- [ ] Documentation

## Testing evidence
<!-- What did you run or check to confirm this works? Paste commands, logs, or test output. -->

```
# e.g. uv run pytest tests/ -v
```

## Security impact
<!-- Does this change touch auth, credentials, encryption, permissions, or exposed endpoints?
     If yes, describe the impact. If no, write "None". -->


## Rollback plan
<!-- How do we undo this if it breaks in production? e.g. revert commit, re-run migration down, redeploy previous image -->


---

## PR hygiene checklist
- [ ] Branch was created from `main` and follows naming convention (`feature/...` or `hotfix/...`)
- [ ] Latest `main` has been merged into this branch before requesting review (`git merge main`)
- [ ] PR targets `main`
- [ ] PR title is descriptive (not "fix stuff" or "updates")
- [ ] This PR is scoped to one area (frontend / engine / backend / etc.) — split it if it covers unrelated changes
- [ ] No secrets, `.env` files, or credentials committed
- [ ] CI checks are passing (or failures are explained below)

**CI failure notes (if any):**
