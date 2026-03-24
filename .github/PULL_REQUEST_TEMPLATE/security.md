<!--
  SECURITY MODULE PR TEMPLATE — AutoAudit
  Use this for: Evidence Assistant (OCR), TPRM scanner, /security/ subsystem
-->

## What changed
<!-- Plain-English summary of what this PR adds or changes in the security module. -->


## Why it changed
<!-- Motivation: new framework coverage, accuracy fix, new document type supported, etc. Link to issue/ticket. -->

Closes #

## Type of change
- [ ] New Essential 8 control check
- [ ] OCR / Tesseract processing improvement
- [ ] TPRM scanner change
- [ ] CLI mode change
- [ ] Web UI mode change
- [ ] New document/screenshot type supported
- [ ] Refactor / cleanup

## Scope of change

**Sub-module affected:**
- [ ] Evidence Assistant (OCR)
- [ ] TPRM scanner
- [ ] Both

**Essential 8 maturity levels affected (if applicable):**
- [ ] ML1
- [ ] ML2
- [ ] ML3

## Testing evidence
<!-- How did you test the OCR accuracy or TPRM logic? Include sample inputs where possible. -->

- [ ] Tested against real or representative screenshots/documents
- [ ] False positive / false negative rate checked and acceptable
- [ ] CLI mode tested: `python -m security.cli ...`
- [ ] Web UI mode tested (if applicable)

```
# Paste relevant output or commands
```

## Accuracy / correctness notes
<!-- For OCR-based checks: describe how confident you are in the extraction accuracy.
     Any known edge cases or document formats that don't work well? -->


## Security impact
<!-- This section is mandatory for this module.
     - Does this change alter how evidence is stored or transmitted?
     - Could any change enable false compliance results (passing when should fail)?
     - Are uploaded files handled safely (no path traversal, no exec of user content)? -->


## Rollback plan
<!-- e.g. revert commit; module is standalone so rollback is low-risk -->


---

## PR hygiene checklist
- [ ] Branch was created from `main` and follows naming convention (`feature/...` or `hotfix/...`)
- [ ] Latest `main` has been merged into this branch before requesting review (`git merge main`)
- [ ] PR targets `main`
- [ ] PR is scoped to one control group or one scanner feature
- [ ] No test documents containing real PII or sensitive tenant data committed
- [ ] CI checks passing
