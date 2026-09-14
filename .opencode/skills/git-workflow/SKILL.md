---
name: git-workflow
description: Branch naming, commit conventions, and basic git hygiene for this project. Use before creating a branch, writing a commit message, or pushing - not only when explicitly asked about git.
license: MIT
compatibility: opencode
---

## Branches

`<type>/<short-slug>` - `feat/group-matching`, `fix/crash-on-join`. Prefix with a ticket ID too if
one exists: `feat/SKI-142-group-matching`. Use `git worktree add` instead of switching branches
in-place if you need to keep working on something else in parallel - not required otherwise.

## Commits

[Conventional Commits](https://www.conventionalcommits.org/): `type(scope): summary, imperative,
no trailing period`. Types: `feat`, `fix`, `chore`, `refactor`, `test`, `docs`, `perf`.

Good: `feat(matching): weight language overlap higher than skill level`
Bad: `fixed stuff`, `wip`, `updates`

Small, focused commits. Squash exploratory/fixup commits before opening a PR.

## Hard rules

- Never commit directly to `main`/`master`.
- Never `push --force` to a branch anyone else might have pulled.
- Rebase your own branch on the base branch before opening a PR; never rebase a shared branch.
