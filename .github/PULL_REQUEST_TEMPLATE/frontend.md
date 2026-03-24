<!--
  FRONTEND PR TEMPLATE — AutoAudit
  Use this for: React components, pages, Tailwind styles, Vite config, API integration
-->

## What changed
<!-- Plain-English summary of the UI/frontend change. -->


## Why it changed
<!-- Motivation: new feature, bug fix, UX improvement, design update. Link to issue/ticket. -->

Closes #

## Type of change
- [ ] New page / route
- [ ] New component
- [ ] Bug fix (UI or data display)
- [ ] Style / layout change
- [ ] API integration (new backend endpoint consumed)
- [ ] Refactor / cleanup

## Screenshots
<!-- Required for any visual change. Before and after if modifying existing UI. -->

| Before | After |
|--------|-------|
| _paste screenshot_ | _paste screenshot_ |

> No visual change? Write "N/A — no UI changes" and delete the table.

## API contract
<!-- If this PR consumes a new or changed backend endpoint, describe it here.
     Is the endpoint already merged to staging, or does this PR depend on a backend PR? -->


## Testing evidence
<!-- How did you verify the feature works end-to-end? -->

- [ ] Ran `npm start` and tested manually in browser
- [ ] Tested on a narrow viewport (mobile-friendly check)
- [ ] Tested with real data (not just mock/placeholder)
- [ ] Console is free of errors and warnings

```
# Any relevant output or test commands
```

## Accessibility & UX
- [ ] Interactive elements are keyboard-accessible
- [ ] No hardcoded colours that bypass Tailwind theme tokens
- [ ] Loading and error states are handled (not just the happy path)

## Security impact
<!-- Does this change expose sensitive data, affect auth flows, or modify JWT handling? -->


## Rollback plan
<!-- e.g. revert commit; no DB changes so rollback is low-risk -->


---

## PR hygiene checklist
- [ ] Branch was created from `main` and follows naming convention (`feature/...` or `hotfix/...`)
- [ ] Latest `main` has been merged into this branch before requesting review (`git merge main`)
- [ ] PR targets `main`
- [ ] PR covers one feature or fix — split if it touches unrelated pages/components
- [ ] No `console.log` debug statements left in
- [ ] No API keys or secrets in frontend code
- [ ] CI checks passing
