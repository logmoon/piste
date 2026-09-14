---
description: Draft a PR description from the current diff, in my style
agent: build
---

Draft a PR description for the current branch's diff against its base branch. Extra context, if
any: $ARGUMENTS

Use the `pr-writing-style` skill's PR description structure (Problem → What this does, by
file/module → Verification → Reviewer notes). Base it on the actual diff, not just the commit
messages. Show it in chat - don't open the PR unless I ask you to.
