---
description: Explore this repo and fill in AGENTS.md - run once per project, safe to re-run
agent: build
---

App description from me, if I gave one: $ARGUMENTS

Fill in `AGENTS.md` (create it from this pipeline's skeleton if missing). Don't overwrite sections
I've already hand-edited with real content - refine them, don't clobber them.

Steps:

1. Detect the stack: look for `package.json`, `pyproject.toml`, `Cargo.toml`, `go.mod`, etc. Note
   the language, framework, and package manager.
2. Find the real commands: install, run, test (including how to run a single test file/pattern),
   lint, type-check. Read `package.json` scripts / `Makefile` / `justfile` rather than guessing
   conventional ones - if a script is named something unusual, use its actual name.
3. Skim the folder structure (top 2-3 levels, skip `node_modules`/`.git`/build output) and note
   where the main source, tests, and any obviously important modules live.
4. If $ARGUMENTS didn't include a description of what the app/project actually does and it isn't
   obvious from a README, ask me for one or two sentences before finishing "Project".
5. Write conventions only if they're inferable with real confidence (an existing lint config,
   consistent patterns you can point to) - don't invent conventions that aren't actually followed.
6. Leave the "Workflow" and "Working discipline" sections as-is; they're this pipeline's fixed
   process, not project-specific.

Report a short summary of what you filled in and anything you weren't confident enough to guess.
