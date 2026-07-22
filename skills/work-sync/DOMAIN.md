<!-- markdownlint-disable MD025 -->
# Domain Document Template

The template below defines the target structure of `docs/DOMAIN.md`. State only facts supported by implementation, tests, executable configuration, verified output, or confirmed user decisions. Put unresolved questions in `Known Gaps` and name the owning code or configuration. Prefer linking existing documentation over restating it; embed a fact only when the source is likely to move or disappear.

## Initialization

Apply when `docs/DOMAIN.md` is empty or missing enough sections that the template structure is not yet in place.

1. Read existing convention sources: `README.md`, `CONTRIBUTING.md`, `ARCHITECTURE.md`, `docs/**/*.md`, `.github/copilot-instructions.md`, `AGENTS.md`, `CLAUDE.md`, and any `.cursor/rules/**`, `.windsurf/rules/**`, `.clinerules/**`, or similar rule files.
2. Explore the codebase with one to three read-only subagents in parallel, covering every template section below.
3. Fill each section from verified evidence. Leave a section body with a single `TBD` only when the evidence is genuinely missing, and add the missing item to `Known Gaps` naming the owning path.

## Update

Apply when `docs/DOMAIN.md` already follows the template.

1. Center the update on the current task's change surface: user request, confirmed session decisions, current diff, and this session's completed work. Read only the owning source, tests, and configuration; use a read-only subagent only when the change surface is too large to inspect directly.
2. Touch only sections whose owning evidence moved. Preserve unaffected sections byte-for-byte.
3. Replace contradicted claims. Remove entries whose owning code was deleted. Add a new entry only when the change introduces a durable fact.
4. Move any unresolved question surfaced by the change to `Known Gaps` with the owning path.

## Template

Everything below is the target structure of `docs/DOMAIN.md`.

---

# Domain

## Overview

One paragraph on the problem the repository solves, its primary users, and the system boundary it owns.

## Concepts

Project-specific terms that recur across modules. Skip terms that are self-explanatory or scoped to a single file.

## Tech Stack

Languages, runtimes, frameworks, key libraries, storage, and infrastructure. Cite the manifest or configuration file where each is declared (e.g. `package.json`, `pyproject.toml`, `go.mod`, `Dockerfile`).

## Repository Layout

Top-level directories with one line of responsibility each. Skip generated, ignored, or trivial paths.

| Path | Responsibility |
| --- | --- |
| | |

## Known Gaps

Unresolved repository-relevant questions with the path or configuration that needs a decision.
