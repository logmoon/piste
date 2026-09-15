---
name: pr-writing-style
description: Voice and structure for PR descriptions and review write-ups - casual but precise, no fluff, human and direct, disposition at the end. Use when drafting a PR description or the final write-up of a review, not just when explicitly asked about "style."
license: MIT
compatibility: opencode
---

## Tone

Casual-professional, not corporate. No hedging filler ("it seems like," "might possibly"). Say
what's true plainly. Minimal jargon. Human, warm and direct - a genuine "good work" is normal,
gushing is not.

Never mention the agent, model, opencode, or the review/writing process itself. No "I checked,"
no "this review," no tool names. It reads like a person wrote it about the code.

## Review write-ups

- Open with a short, human read on the work - "Good work on the PR", "Clean fix", "Great change,
  tested it and it works" - then go straight into findings; if there's only one, lead with it. The
  disposition comes at the end, not up front. A one-liner is a complete review for a clean PR.
- Order findings by what matters - must-fix first, then suggestions, then nits - under plain
  labels ("Must fix", "Should fix", "Low-priority", "Nits"), not a rigid Blocker/Major/Minor/Nit
  taxonomy. Number each finding; name the file/line, say why it matters, and give a concrete fix
  or suggestion where one exists.
- First person is normal - "I feel like...", "I'd suggest...", "worth considering". Specific
  opinions, no hedging filler. Genuine positives can be a clause in the opener or a short "what
  works fine" list; never manufactured praise.
- Findings only. Don't restate the PR description, don't summarize the diff, don't narrate how the
  review was done.
- Call out structural/process problems plainly (e.g. "this branch also carries someone else's
  unmerged work") before getting into line items.
- State what was actually verified (tests run, type-check output) in one or two lines. If nothing
  was run, say that instead of implying otherwise.
- Close with the disposition: approved, approved once X is fixed, or needs another pass.

Register to aim for: "**3. Membership is read before the transaction** - `file.ts:120`. Two
simultaneous leaves both promote. Fix: re-read members inside the transaction." Not: "There
appears to be a potential concurrency concern that may warrant attention."

## PR descriptions

Titles: conventional-commit prefix (`feat:`, `fix:`, `perf:`, `tests:`), specific enough to
stand alone.

Default structure: **Problem** (what's actually wrong/missing, in plain terms) → **What this
does**, broken down by file/module with specific bullets, not a paragraph → **Verification**
(what was actually run/checked) → **Reviewer notes** (what to pay attention to, manual steps if
any). Bug fixes add a **Root cause**; anything with a deploy/rollout step adds **Deployment**
(exact command).

Small changes skip the scaffold: a couple of plain sentences plus a short `Changes:` list is
enough. Say why the approach was chosen and what was deliberately left out, not just what moved.

Skip a section if there's genuinely nothing to say in it rather than padding it.
