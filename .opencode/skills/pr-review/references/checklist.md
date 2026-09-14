# PR review checklist

Reference for the `pr-review` skill. Skip sections that don't apply to the diff at hand.

## Correctness

- Does the change do what the description/ticket asks - not just something reasonable?
- Edge cases: empty states, zero/negative numbers, null/undefined, very large inputs, concurrency?
- Off-by-one errors in loops, pagination, date/range logic?
- Race conditions: unhandled promise rejections, double-fires, stale closures?
- Does error handling actually handle the error, or just swallow/log it?

## Build / compatibility

- Any renamed or removed fields/functions/types that other files still reference?
- Any type change that breaks a caller elsewhere?
- Backward compatibility: does this break existing behavior/data for anyone not touched by the PR?

## Tests

- Do tests exist for the new behavior, not just the happy path?
- Was a failing test made to pass by weakening the assertion rather than fixing the code?
- Do existing tests still pass? Anything skipped/deleted without explanation?
- Bugfix: is there a regression test that would've caught the original bug?

## Security & performance

- User input reaching a query, shell command, or template unsanitized?
- Secrets, tokens, or keys hardcoded or logged?
- Any weakened or missing permission/auth check relative to surrounding code's pattern?
- Read/write amplification: N+1 queries, unnecessary sequential round-trips, unbounded loops?

## Maintainability & scope

- Matches the project's existing conventions and patterns?
- Duplicated logic that already exists elsewhere?
- Is the diff scoped to what it claims, or does it carry unrelated changes that should split out?
