# Piste

Piste is a simple glue that streamlines work on your projects in opencode, it doesn't replace how you already work, it just adds utility commands and skills to help you and your agents effectively work on tickets, review and write PRs.

## Install into a project

```bash
./install.sh /path/to/your-project
cd /path/to/your-project
opencode
```

Then, inside opencode:

```
/setup
```

This explores the repo (stack, real test/lint/build commands, folder layout) and fills in
`AGENTS.md`. Give it a one-line description of the project if it asks. Safe to re-run later - it
refines, doesn't overwrite what you've already edited by hand.

## Working a ticket / feature / bug

```
/work "<paste the Trello title + description, or describe it inline>"
```

This always runs in Plan mode - it proposes a phased plan and stops, it never touches files. Push
back on the plan if needed. When it's right, switch to Build and tell it to go.

## Reviewing a PR

```
/review-pr [PR number or URL]
```

Runs the checklist (Blocker/Major/Minor/Nit + a "what's good" note). Depth isn't a flag - it
defaults to a middle ground and automatically goes deeper on the parts of the diff that are risky
(auth, payments, migrations) or where it isn't confident, while staying fast on the rest. Any
Blocker automatically gets checked by a second, context-free agent before you see it, so a false
positive doesn't reach you labeled as fact.

```
/write-review [PR number]
```

Takes the findings above and drafts the final review in your voice. Shows you the draft; only
posts (via `gh`) once you say to.

## Opening your own PR

```
/describe-pr
```

Drafts a description from the current diff (Problem → What this does → Verification → Reviewer
notes). Shows it in chat; doesn't open the PR unless you ask it to.

## What's in here

```
AGENTS.md                                  skeleton, filled by /setup
.opencode/commands/
  setup.md        work.md        review-pr.md     write-review.md     describe-pr.md
.opencode/agents/
  reviewer.md (read-only)        verifier.md (fresh-eyes Blocker check)
.opencode/skills/
  plan-quality/    git-workflow/    pr-review/ (+ references/checklist.md)    pr-writing-style/
```

## Notes

- No ticket files, no worktrees, no JSON config - permissions live in each agent's own frontmatter. Add those things later only if you actually feel the lack of them.
- No stack-specific skill is included on purpose - `/setup` covers "how does this repo work," and anything deeper (framework conventions, etc.) is worth sourcing per-project rather than baked in here. `.opencode/skills/` and `.claude/skills/` are interchangeable if you want to pull in a community skill later.
