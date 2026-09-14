---
name: pr-writing-style
description: Voice and structure for PR descriptions and review write-ups - casual but precise, no fluff, verdict up front. Use when drafting a PR description or the final write-up of a review, not just when explicitly asked about "style."
license: MIT
compatibility: opencode
---

## Tone

Casual-professional, not corporate. No hedging filler ("it seems like," "might possibly"). Say
what's true plainly. Minimal jargon. Human, direct, a little dry is fine.

## Review write-ups

- Open with one or two bolded sentences giving the overall verdict/framing before any findings -
  what's the shape of this PR, is it basically fine or is there something structural first.
- Group findings strictly by severity (Blocker/Major/Minor/Nit). Each finding: a bolded one-line
  "what and where" (with file:line) followed by the concrete reasoning - not a vague concern.
- Willing to call out structural/process problems (e.g. "this branch also carries someone else's
  unmerged work"), not just line-level bugs - say it plainly if something's off about the PR
  itself, before getting into line items.
- Always include what was actually verified - tests run, type-check output, not just "looks
  fine." A claim like "matches the bundled SDK version" should be checked, not assumed.
- Close with a clear verdict: ship it, ship it once X is fixed, or don't.

## PR descriptions

Structure: **Problem** (what's actually wrong/missing, in plain terms) → **What this does**,
broken down by file/module with specific bullets, not a paragraph → **Verification** (what was
actually run/checked) → **Reviewer notes** (what to pay attention to, manual steps if any).

Skip a section if there's genuinely nothing to say in it rather than padding it.
