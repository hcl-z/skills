---
name: work-sync
description: Reconcile CLAUDE.md and docs/ guidance with what the code actually does now, after behavior, contracts, commands, constraints, or UI rules changed.
disable-model-invocation: true
argument-hint: "Describe the changed behavior, files, or session decisions to reconcile"
---

# Sync Project Docs

Reconcile the repo's four-document guidance contract with current implementation, with the smallest edits that make it truthful again:

- `CLAUDE.md` — concise entry point and routing.
- `docs/DOMAIN.md` — project truth, terminology, data model, output model, file routing.
- `docs/CONSTRAINTS.md` — non-negotiable rules grouped by the repo's actual risks.
- `docs/DESIGN.md` — verified visual/UI/frontend rules.

## Scope

- Sync only for changes that affect behavior, navigation, contracts, or constraints — not for formatting or internal refactoring that leaves behavior intact.
- Edit the smallest affected set; preserve valid detail and terminology, and replace any claim the evidence contradicts.

## Evidence Order

Resolve discrepancies in this order:

1. Current implementation, tests, and executable configuration.
2. Deliberate session decisions confirmed by the user or implemented this session.
3. Versioned fixtures and representative generated output (exclude secrets and ignored artifacts unless the user authorizes inspection).
4. Existing documentation and README prose.

Record verified behavior only; carry anything you cannot verify to `Known Gaps` in `DOMAIN.md`, naming the code or config that needs a decision.

## Procedure

1. Find the change surface from the user's request, the current diff, and this session's completed work. Read only the owning source, its relevant test or config, and the four docs.
2. Build a compact fact table: each changed fact, its evidence, the document that owns it, and whether it is new, corrected, or removed.
3. Route each fact by ownership:
   - Navigation and concise routing → `CLAUDE.md`.
   - Project truth → `docs/DOMAIN.md`, in this section order: Project Purpose; Domain Concepts and Terminology; Data Model and External Contracts; Primary Workflows; Architecture and Ownership; Repository Map; Change Routing; Runtime and Local Commands; Known Gaps.
   - Must-not-break rules → `docs/CONSTRAINTS.md`, in project-specific categories (create a category only for a verified rule; merge sparse related rules; split only when ownership, risk, or validation differs).
   - Verified visual language, component, layout, responsive, accessibility, and interaction rules → `docs/DESIGN.md`.
4. Reconcile duplication across the contract: `CLAUDE.md` summarizes and routes; `DOMAIN.md` and `CONSTRAINTS.md` own the detail. In `Repository Map` use `Path` / `Responsibility` / `Read Before Changing`; in `Change Routing` use `Change Type` / `Start Here` / `Also Read`.
5. For `docs/DESIGN.md`: add a rule only once it is implemented or user-approved; keep the file empty when no verified UI guidance exists.
6. Validate — see completion criteria below.

## Completion: Validate

Done when every one of these holds:

- Every edited statement traces to current code, config, verified output, or a confirmed session decision.
- `CLAUDE.md` still routes readers to `DOMAIN.md`, `CONSTRAINTS.md`, and `DESIGN.md` with their agreed responsibilities.
- No stale product names, framework references, unsupported commands, secrets, or generated artifacts remain in any of the four docs.
- The narrowest relevant test, typecheck, lint, build, or CLI check passes; if it cannot, the exact blocker and the residual documentation risk are stated.
