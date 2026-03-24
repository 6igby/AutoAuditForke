<!--
  DEVOPS / INFRASTRUCTURE PR TEMPLATE — AutoAudit
  Use this for: Docker, docker-compose, CI/CD workflows, GitHub Actions, Prometheus, environment config
-->

## What changed
<!-- Plain-English summary of the infrastructure or pipeline change. -->


## Why it changed
<!-- Motivation: new service needed, pipeline fix, security hardening, monitoring addition. Link to issue/ticket. -->

Closes #

## Type of change
- [ ] Docker / docker-compose change
- [ ] GitHub Actions workflow (new or modified)
- [ ] Environment variable / secrets change
- [ ] Prometheus / monitoring config
- [ ] Dependency version bump
- [ ] New service added
- [ ] Infrastructure security hardening

## Impact surface

**Services affected:**
- [ ] Frontend (port 3000)
- [ ] Backend API (port 8000)
- [ ] PowerShell Service (port 8001)
- [ ] OPA (port 8181)
- [ ] PostgreSQL (port 5432)
- [ ] Redis (port 6379)
- [ ] Prometheus (port 9090)
- [ ] CI/CD pipeline only

## Testing evidence
<!-- How did you verify the infra change works? -->

- [ ] `docker compose up` completes without errors
- [ ] All affected services reach healthy state
- [ ] GitHub Actions workflow ran successfully (link the run below)
- [ ] No new secrets or credentials baked into images

```bash
# e.g. docker compose --profile all up
```

**CI run link (if applicable):** <!-- paste GitHub Actions run URL -->

## Environment variable changes
<!-- List any new, removed, or renamed env vars. Update .env.example if needed. -->

| Variable | Change | Required? |
|----------|--------|-----------|
| `VAR_NAME` | Added / Removed / Renamed | Yes / No |

> No env changes? Delete this table and write "N/A".

## Security impact
<!-- This section is mandatory for infra changes.
     - Are any ports newly exposed?
     - Are container images pinned to a digest or just a tag?
     - Are secrets passed via env (not baked into image layers)?
     - Does this change affect the Grype vulnerability scan results? -->


## Rollback plan
<!-- e.g. revert commit and redeploy previous Docker image tag; describe any manual steps needed -->


---

## PR hygiene checklist
- [ ] Branch was created from `main` and follows naming convention (`feature/...` or `hotfix/...`)
- [ ] Latest `main` has been merged into this branch before requesting review (`git merge main`)
- [ ] PR targets `main`
- [ ] Docker image tags follow the naming convention: `autoauditservices/<service>:<branch>`
- [ ] No `.env` files, secrets, or credentials committed
- [ ] `docker-compose.yml` changes tested locally before pushing
- [ ] CI checks passing (including Grype scan if image changed)
