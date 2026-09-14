---
description: Fold a finished /review-pr report into a final markdown review, in my voice, and post it once I approve
agent: build
---

PR to post this to: $ARGUMENTS

Use the most recent `/review-pr` findings in this conversation (don't re-run the review). Steps:

1. Use the `pr-writing-style` skill to draft the final review as markdown: verdict-first opening,
   findings grouped by severity, "what's good," closing verdict + what was verified.
2. Show me the draft in chat. Do not post anything yet.
3. Only after I explicitly approve it, post it with `gh pr review $ARGUMENTS --body-file -` (or
   `gh pr comment` if that fits better) under my account. If I ask for changes, redraft and show
   me again before posting.
