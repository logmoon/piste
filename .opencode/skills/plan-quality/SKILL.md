---
name: plan-quality
description: How to turn a pasted ticket, feature ask, or bug report into a plan worth approving. Use this whenever in Plan mode drafting a plan for new work, not only when explicitly asked to "write a spec."
license: MIT
compatibility: opencode
---

## The point

A plan exists so scope and assumptions get corrected while they're still free to fix, not after
code's been written. Match the plan's weight to the task - a one-line fix doesn't need three
phases invented to look thorough, and a real feature shouldn't be crammed into one.

## Do

- Be thorough, smart and sharp and work fast - plan at the depth the task earns, and don't paste
  code or narrate thinking the reader can see themselves.
- State the goal in plain terms before jumping to approach - "what should be true when this is
  done," not just "what to build."
- Note anything from `AGENTS.md` or the existing code that constrains the approach (an existing
  pattern to follow, something already tried and rejected).
- For anything beyond a trivial fix, break it into phases small enough to review independently.
  Each phase should leave things in a working state, not half-wired.
- Call out real ambiguity - a question where different answers lead to different implementations.
  Ask it now rather than guessing and finding out later.
- For a bug: plan to reproduce it (failing test or clear repro steps) before planning the fix.

## Don't

- Don't invent phases to seem thorough on a small task.
- Don't bury an assumption inside the plan as if it were settled fact - flag it as an assumption.
- Don't ask about things where any reasonable choice is fine (exact copy, minor naming) - just
  pick one and move on.
