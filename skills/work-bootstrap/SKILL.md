---
name: work-bootstrap
description: Create a repo's CLAUDE.md and empty project-document placeholders, then initialize the docs with `/work-sync`.
disable-model-invocation: true
argument-hint: "Optional repository root or documentation focus"
---

# Bootstrap Project Docs

Create a root `CLAUDE.md` and empty project-document placeholders, then run `/work-sync` to initialize the docs.

- `CLAUDE.md`
- `docs/DOMAIN.md`
- `docs/CONSTRAINTS.md`
- `docs/DESIGN.md`

## Scope

- Work from the repository root; supporting docs live in `docs/`.
- Create `docs/` files only when missing; leave existing docs byte-for-byte as they are.
- When `CLAUDE.md` exists, preserve its contents and append the template body after them instead of replacing it.

## Procedure

1. Make `docs/` if needed.
2. Create a missing root `CLAUDE.md` from the [CLAUDE.md template](templates.md). When it already exists, append the template body after its current contents without adding a second `# CLAUDE.md` heading.
3. Create each missing document under `docs/` as a zero-byte file.
4. Run `/work-sync` to initialize the document placeholders.

Done when `/work-sync` completes its initialization and validation criteria.
