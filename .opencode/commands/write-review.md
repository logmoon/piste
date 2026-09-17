---
description: Fold a finished /review-pr report into a final markdown review, in my voice, and post it once I approve
agent: plan
---

PR to post this to: $ARGUMENTS

Use the most recent `/review-pr` findings in this conversation (don't re-run the review). Steps:

1. Use the `pr-writing-style` skill to draft the final review as markdown: short verdict-first
   opening (one clause if something is genuinely good - no praise section), findings grouped by
   severity, closing verdict + what was verified. Keep it tight and jargon-free, and never mention
   the review process, agents, or opencode.
2. Show me the draft in chat. Do not post anything yet.
3. Only after I explicitly approve it, post it with `gh pr review $ARGUMENTS --body-file -` (or
   `gh pr comment` if that fits better) under my account. If I ask for changes, redraft and show
   me again before posting.
