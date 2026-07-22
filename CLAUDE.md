# CLAUDE.md

These instructions apply to all AI assistants working in this repository.

## Documentation

Project-specific knowledge lives in `docs/`. Read the relevant document before making changes:

- `docs/DOMAIN.md` — Project context, data models, architecture, and file routing. Read before changing business logic or data structures.
- `docs/CONSTRAINTS.md` — Repository rules grouped by risk. Each rule uses `- [level | source] Rule.` plus `Evidence:`; `level` indicates enforcement priority and `source` records whether the user required it or the assistant inferred it. Read the relevant category before changing core logic, APIs, auth, data processing, or build workflows.
- `docs/DESIGN.md` — Optional visual and interaction guidance. Read before changing user-visible UI.

When multiple documents apply, use this precedence:

1. `CONSTRAINTS.md` for technical, security, compatibility, and operational requirements.
2. `DESIGN.md` for visual and interaction decisions.
3. `DOMAIN.md` for project context, terminology, and code navigation.

Keep detailed domain knowledge in `DOMAIN.md`, mandatory rules in `CONSTRAINTS.md`, and UI guidance in `DESIGN.md`.
