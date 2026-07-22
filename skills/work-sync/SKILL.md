---
name: work-sync
description: Sync project docs (`docs/DOMAIN.md`, `docs/CONSTRAINTS.md`, `docs/DESIGN.md`) with current implementation and harvest evidence-backed repository constraints.
argument-hint: "Describe the changed behavior, files, or session decisions to reconcile"
---

# Sync Project Docs

Reconcile three docs with the smallest edits that make them truthful against current implementation:

- `docs/DOMAIN.md` — project truth. Generate or update from sibling [DOMAIN.md](DOMAIN.md).
- `docs/CONSTRAINTS.md` — non-negotiable rules under `# Constraints`, grouped by the repo's actual risks.
- `docs/DESIGN.md` — verified UI rules. Keep empty until any exist.

Sync only for changes to behavior, contracts, or constraints — not formatting or behavior-preserving refactors. Treat durable user requirements stated in this repo as repository rules.

## Evidence Order

Resolve discrepancies in this order, and carry anything you cannot verify to `Known Gaps` in `DOMAIN.md`:

1. Current implementation, tests, and executable configuration.
2. Session decisions confirmed by the user or implemented this session.
3. Versioned fixtures and representative generated output.
4. Existing documentation and README prose.

## Constraint Harvesting

Inspect the request, session decisions, current diff, validation results, tests, and executable configuration for durable repository rules. Write each rule as:

```md
- [level | source] Rule.
  Evidence: owning path, test, config, or validation command.
```

- `low | assistant` — implementation evidence first reveals it.
- `medium | user` — an explicit durable user requirement.
- `high` — the user makes it non-negotiable, or the rule is enforced by tests, config, CI, security, data integrity, or a compatibility contract.

Upgrade `low → medium` when the rule gains independent evidence or a second owning path. Upgrade to `high` only under the `high` conditions above. Before adding a rule, search for a semantically equivalent one and update it in place. Retire a `low` rule when current implementation no longer supports it; a `medium` or `high` rule stays only while current evidence still supports it, otherwise raise the conflict as a `Known Gaps` item in `DOMAIN.md`.

Keep each rule in the one risk category where it most directly belongs. Create a category only when a verified rule needs it.

## Procedure

1. Ensure `docs/`, `docs/DOMAIN.md`, `docs/CONSTRAINTS.md`, and `docs/DESIGN.md` exist. Missing `DOMAIN.md` follows the sibling template; missing `CONSTRAINTS.md` starts with `# Constraints`; missing `DESIGN.md` is empty.
2. Find the change surface from the user's request, session decisions, and current diff. Read only the owning source, its tests or config, and the three docs.
3. Route each changed fact: project truth → `DOMAIN.md`; durable non-negotiable rule → `CONSTRAINTS.md` per `Constraint Harvesting`; verified UI rule → `DESIGN.md`. Every edited statement must trace to current code, config, verified output, or a confirmed session decision.
4. Remove stale claims, unsupported commands, and any duplicate or one-off rule surfaced by the sync.
5. Run the narrowest test, typecheck, lint, build, or CLI check that covers the change. State any blocker and the residual documentation risk if it cannot run.
