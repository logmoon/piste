---
name: pr-review
description: How to review a diff or PR - correctness, security, tests, and whether the description matches the code. Use whenever reviewing a pull request or diff before merge, even if not explicitly asked for a "review."
license: MIT
compatibility: opencode
---

## Process

1. Pull the PR's metadata (title, description, commits, files changed) and the full diff.
2. **Check the description's claims against the actual diff** - does it do what it says it does,
   nothing more, nothing quietly missing.
3. Read the whole diff once before writing any finding - a problem in one file is sometimes
   resolved in another.
4. Apply `references/checklist.md`. Skip sections that plainly don't apply rather than padding.
5. Verify, don't just eyeball, wherever you have permission to run tests/type-checking.
6. Report findings grouped by severity, each with file:line and a short concrete explanation:
   - **Blocker** - breaks something, must fix before merge.
   - **Major** - real problem, not necessarily merge-blocking, shouldn't be ignored.
   - **Minor** - worth fixing, low stakes.
   - **Nit** - optional, style-level. Label it as such.
7. No praise section. If something in the diff is genuinely good, one clause in the opening
   framing at most - findings are the substance.

## Depth

Be thorough, smart and sharp - depth is earned per section, not a mode switch.

Calibrate depth to the diff itself, not to a flag. Default to a middle ground: work the checklist
directly, don't narrate exploration, don't hedge - most diffs don't need exhaustive treatment.
Go deeper automatically, without being asked, when any of these are true for a given part of the
diff:

- It touches auth, payments, migrations, permissions, or anything else where a mistake is
  expensive or hard to reverse.
- You're not confident in a judgment - re-check it against the actual code or tests rather than
  reporting a hedge as if it were settled.
- It's large, touches many files, or has non-obvious control flow / concurrency.
- The checklist raised a real Blocker-level suspicion - that specific area earns a closer look,
  not the whole diff.

Depth is local to what needs it, not a global mode switch - a diff can get a fast pass everywhere
except the one function that touches permissions. For a small, mechanical, low-risk diff, the fast
pass is the whole review; don't manufacture extra effort to seem thorough.

## Don't

- Don't manufacture findings to seem thorough - a clean diff gets a clean report.
- Don't mention the review itself, the reviewer, or any tooling - the review is about the code.
- Don't turn nits into Major to pad the review.
- When reviewing agent-written code specifically, check whether a failing test was made to pass by
  weakening the assertion instead of fixing the implementation - a known failure mode worth
  checking explicitly, not just assuming good faith.
