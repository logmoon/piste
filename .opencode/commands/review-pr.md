---
description: Review a diff/PR - depth scales to what each part of the diff actually needs, auto-verifies any Blocker
agent: plan
---

Review target: $ARGUMENTS

No argument → review the current branch's diff against its base. A PR number/URL → fetch that
PR's diff (`gh pr diff`) and description instead.

Steps:

1. Invoke `@reviewer` with the diff (and description, if reviewing a PR) to produce findings
   grouped by severity, per the `pr-review` skill. It calibrates its own depth per part of the
   diff - no flag needed, it goes deeper on risky or uncertain areas on its own.
2. For every finding marked **Blocker**: invoke a fresh `@verifier` instance per finding, giving
   it only the diff and that specific claim - not the reviewer's reasoning. Do this automatically,
   without asking.
3. Present the final report with each Blocker tagged **confirmed**, **not confirmed**, or
   **uncertain** based on the verifier's answer. Drop findings the verifier disproved, but say so
   explicitly rather than silently removing them ("Blocker dropped after verification: ...").
4. Show findings with full file:line detail - don't summarize away specifics. Keep the report to
   the verdict line and findings: no praise section, no narration about the review process.
