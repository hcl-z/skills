# work-bootstrap — File Templates

Disclosed reference for [`work-bootstrap`](SKILL.md). The exact structures to copy when creating each missing target file. Loaded only when the procedure step that needs a template fires.

## CLAUDE.md Template

Use this exact template for a missing root `CLAUDE.md`:

```md
# CLAUDE.md

These instructions apply to all AI assistants working in this repository.

## Documentation

Project-specific knowledge lives in `docs/`. Read the relevant document before making changes:

- `docs/DOMAIN.md` — Project context, data models, architecture, and file routing. Read before changing business logic or data structures.
- `docs/CONSTRAINTS.md` — Mandatory security, compatibility, runtime, and output requirements. Read before changing core logic, APIs, auth, data processing, or build workflows.
- `docs/DESIGN.md` — Optional visual and interaction guidance. Read before changing user-visible UI.

When multiple documents apply, use this precedence:

1. `CONSTRAINTS.md` for technical, security, compatibility, and operational requirements.
2. `DESIGN.md` for visual and interaction decisions.
3. `DOMAIN.md` for project context, terminology, and code navigation.

Keep detailed domain knowledge in `DOMAIN.md`, mandatory rules in `CONSTRAINTS.md`, and UI guidance in `DESIGN.md`.
```

## File Structures

### `docs/DOMAIN.md`

Create with these headings:

```md
# Domain

## Project Purpose

## Domain Concepts and Terminology

## Data Model and External Contracts

## Primary Workflows

## Architecture and Ownership

## Repository Map

## Change Routing

## Runtime and Local Commands

## Known Gaps
```

- Keep every section evidence-based.
- In `Repository Map`, use `Path`, `Responsibility`, and `Read Before Changing` columns.
- In `Change Routing`, use `Change Type`, `Start Here`, and `Also Read` columns.
- Record unresolved details only in `Known Gaps`; carry nothing there that the code evidences.

### `docs/CONSTRAINTS.md`

Seed with:

```md
# Constraints
```

Then group verified constraints into 2–7 categories that reflect the repository's actual risks:

- Create a category only when it has a verified constraint; merge sparse related constraints, and split categories only when ownership, risk, or validation differs.
- Prefer specific names — `Authentication`, `Manifest Integrity`, `Browser Compatibility`, `Database Migrations` — over generic buckets.
- Possible categories (examples, not required headings): Security and Secrets; Data and Compatibility; Runtime and Operations; Testing and Validation; UI and Accessibility; Performance and Concurrency; Explicit Prohibitions.
- Every constraint is evidence-backed, actionable, testable where possible, and linked to an owning path, configuration, or validation command.

### `docs/DESIGN.md`

Zero bytes. No content until a UI rule is implemented or user-approved.
