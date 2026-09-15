---
name: pr-writing-style
description: Voice and structure for PR descriptions and review write-ups - casual but precise, no fluff, verdict up front. Use when drafting a PR description or the final write-up of a review, not just when explicitly asked about "style."
license: MIT
compatibility: opencode
---

## Tone

Casual-professional, not corporate. No hedging filler ("it seems like," "might possibly"). Say
what's true plainly. Minimal jargon. Human, direct, a little dry is fine.

Never mention the agent, model, opencode, or the review/writing process itself. No "I checked,"
no "this review," no tool names. It reads like a person wrote it about the code.

## Review write-ups

- Open with a short, plain verdict - one or two sentences, not a framing paragraph. If something
  in the diff is genuinely good, fold it into that opening in a clause. There is never a praise
  section or a "what's good" heading.
- Group findings strictly by severity (Blocker/Major/Minor/Nit). Each finding: a bolded one-line
  "what and where" (file:line) followed by the concrete reasoning - not a vague concern.
- Findings only. Don't restate the PR description, don't summarize the diff, don't narrate how the
  review was done.
- Call out structural/process problems plainly (e.g. "this branch also carries someone else's
  unmerged work") before getting into line items.
- State what was actually verified (tests run, type-check output) in one or two lines. If nothing
  was run, say that instead of implying otherwise.
- Close with a clear verdict: ship it, ship it once X is fixed, or don't.

Register to aim for: "**Blocker - `joinTrip.ts:41`**: membership is read before the transaction;
two simultaneous leaves both promote." Not: "There appears to be a potential concurrency concern
that may warrant attention."

## PR descriptions

Structure: **Problem** (what's actually wrong/missing, in plain terms) → **What this does**,
broken down by file/module with specific bullets, not a paragraph → **Verification** (what was
actually run/checked) → **Reviewer notes** (what to pay attention to, manual steps if any).

Skip a section if there's genuinely nothing to say in it rather than padding it.
