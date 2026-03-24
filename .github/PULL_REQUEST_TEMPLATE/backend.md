<!--
  BACKEND API PR TEMPLATE — AutoAudit
  Use this for: FastAPI endpoints, SQLAlchemy models, Alembic migrations, auth, Celery tasks triggered from the API
-->

## What changed
<!-- Plain-English summary of what this PR adds or changes in the backend. -->


## Why it changed
<!-- Motivation: new endpoint needed, bug fix, data model change, auth update. Link to issue/ticket. -->

Closes #

## Type of change
- [ ] New API endpoint(s)
- [ ] Modified endpoint (request/response shape changed)
- [ ] New or modified SQLAlchemy model
- [ ] Alembic migration
- [ ] Auth / permissions change
- [ ] Celery task
- [ ] Refactor / cleanup

## API changes
<!-- List any new or modified endpoints. Include method, path, and a one-line description. -->

| Method | Path | Description |
|--------|------|-------------|
| `GET` | `/api/v1/...` | |

> No endpoint changes? Delete this table and write "N/A".

## Database migrations
- [ ] This PR includes an Alembic migration (`uv run alembic revision --autogenerate -m "..."`)
- [ ] Migration has been tested (`uv run alembic upgrade head` and `downgrade -1`)
- [ ] No destructive column drops without a deprecation plan

> No DB changes? Write "N/A — no migrations".

## Testing evidence
<!-- Paste relevant test output or describe manual API testing (e.g. via Swagger UI at /docs). -->

```bash
uv run pytest tests/ -v
```

```
# Paste output here
```

- [ ] New endpoint covered by at least one test
- [ ] Auth/permissions tested (unauthenticated request returns 401/403)
- [ ] Async DB operations use `async/await` consistently

## Security impact
<!-- This section is mandatory.
     - Does this endpoint bypass or change auth (`Depends()` guards)?
     - Is any new data stored encrypted (credentials must use Fernet)?
     - Are user inputs validated (Pydantic models)?
     - Could this endpoint be abused (rate limiting, SSRF, injection)? -->


## Rollback plan
<!-- e.g. revert commit; if migration included: run `alembic downgrade -1` then redeploy previous image -->


---

## PR hygiene checklist
- [ ] Branch was created from `main` and follows naming convention (`feature/...` or `hotfix/...`)
- [ ] Latest `main` has been merged into this branch before requesting review (`git merge main`)
- [ ] PR targets `main`
- [ ] PR covers one endpoint group or one model change — split if larger
- [ ] No hardcoded secrets or credentials
- [ ] All new endpoints require authentication unless intentionally public (document why)
- [ ] CI checks passing
