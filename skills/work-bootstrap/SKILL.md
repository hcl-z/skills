---
name: work-bootstrap
description: Scaffold a repo's AI-readable docs — CLAUDE.md plus the docs/ knowledge base (DOMAIN, CONSTRAINTS, DESIGN) — where none exist yet.
disable-model-invocation: true
argument-hint: "Optional repository root or documentation focus"
---

# Bootstrap Project Docs

Create a repo's four-document guidance contract where it does not yet exist:

- `CLAUDE.md` — the entry point that routes agents to the docs.
- `docs/DOMAIN.md` — verified project context and code routing.
- `docs/CONSTRAINTS.md` — verified must-not-break rules, grouped by real risk.
- `docs/DESIGN.md` — empty placeholder for future UI guidance.

## Scope

- Work from the repository root; supporting docs live in `docs/`.
- Touch only files that do not yet exist; leave any existing target file byte-for-byte as it is.
- Evidence is code, configuration, tests, and fixtures. Keep all checks local and credential-free; when source and README prose disagree, source and executable config win.

## Procedure

1. Make `docs/` if needed. Note which of `CLAUDE.md`, `docs/DOMAIN.md`, `docs/CONSTRAINTS.md`, `docs/DESIGN.md` already exist.
2. Create a missing root `CLAUDE.md` from the [CLAUDE.md template](templates.md#claudemd-template).
3. Before writing a missing `DOMAIN.md` or `CONSTRAINTS.md`, inspect only: the package/build configuration, the primary entry point, the owning module, and one test, fixture, or safe command path.
4. State one falsifiable hypothesis about the primary behavior, then run the cheapest local check that could disprove it.
5. Create the missing `DOMAIN.md` and `CONSTRAINTS.md` from the [file structures](templates.md#file-structures). Put verified domain facts in `DOMAIN.md`, verified rules in `CONSTRAINTS.md`; carry anything unverified to `Known Gaps`.
6. Create a missing `docs/DESIGN.md` as a zero-byte file.
7. Validate — see completion criteria below.

## Completion: Validate

Done when every one of these holds:

- All four targets exist; a created `DESIGN.md` is exactly zero bytes.
- Every path and command the new docs mention exists in the repo or is explicitly marked generated.
- The focused check from step 4 ran, and its result is recorded in `DOMAIN.md` (`Runtime and Local Commands` or `Known Gaps`).
- `DOMAIN.md` carries no fact the code does not evidence, and `CONSTRAINTS.md` carries no rule without an owning path, config, or validation command.

State the exact blocker and the residual gap if any check fails; do not declare done while a target is missing or a claim is unverified.
