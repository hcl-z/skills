# Domain

## Overview

This repository is the source of truth for `hcl-z`'s personal collection of agent skills — small, composable prompt documents that teach Claude Code, Codex, and other Agent-Skills-compatible harnesses a reusable discipline. It is also a Claude Code plugin marketplace: consumers install skills as a managed auto-updating plugin (`/plugin install hclz-skills@hcl-z`) or clone-and-link editable symlinks. The system boundary is the skill content and the manifests/scripts that publish it; it owns no runtime application code.

## Concepts

- **Skill** — one folder under `skills/` containing a `SKILL.md` (frontmatter `name`, `description`, optional `disable-model-invocation`) and an `agents/openai.yaml` (Codex UI metadata + invocation policy).
- **User-invoked** — reachable only by a human typing the skill name. Marked `disable-model-invocation: true` in `SKILL.md` and `policy.allow_implicit_invocation: false` in `agents/openai.yaml`. The `description` is human-facing; trigger phrasing is stripped.
- **Model-invoked** — reachable by the model autonomously or by the user. Default (omit `disable-model-invocation` and the `policy` block). The `description` is model-facing and keeps rich trigger phrasing so auto-invocation fires.
- **Invocation dependency** — expressed as `/skill`-style prose invocation, not cross-folder file references. A user-invoked skill may invoke model-invoked skills but never another user-invoked one. See `.agents/invocation.md`.

## Tech Stack

- **Skill format** — Markdown `SKILL.md` with YAML frontmatter; Codex metadata in `agents/openai.yaml`. Declared per skill folder.
- **Plugin manifest** — `.claude-plugin/plugin.json` (plugin identity, `version`, `skills[]` array) and `.claude-plugin/marketplace.json` (marketplace identity, plugin list).
- **Package identity** — `package.json` (`name: hclz-skills`, `version: 1.1.1`, private, MIT). The single source for the version that `scripts/sync-plugin.sh` propagates to `plugin.json`.
- **Versioning** — `changelogen` via `npm run bump:patch|minor|major`, then `npm run sync` (`scripts/sync-plugin.sh`) to copy `package.json`'s version into `plugin.json`. Bumps also write `CHANGELOG.md`.
- **CI** — `.github/workflows/release.yml` opens a version PR on every push to `main`.
- **Local install** — `scripts/link-skills.sh` symlinks each `skills/*` into `~/.claude/skills` and `~/.agents/skills`. `scripts/list-skills.sh` lists all `SKILL.md` files.

## Repository Layout

| Path | Responsibility |
| --- | --- |
| `skills/` | One folder per skill (`SKILL.md` + `agents/openai.yaml`). The publishable product. |
| `.claude-plugin/` | Plugin and marketplace manifests consumed by the Claude Code plugin system. |
| `scripts/` | Maintainer scripts: `link-skills.sh` (local editable installs), `list-skills.sh` (inventory), `sync-plugin.sh` (version sync into `plugin.json`). |
| `.agents/invocation.md` | The user-invoked vs model-invoked contract shared across harnesses. |
| `README.md` | Install, develop, and reference index; groups skills into User-invoked and Model-invoked. |
| `CLAUDE.md` | Repo-level instructions pointing AI assistants at `docs/`. |
| `.github/workflows/release.yml` | Version-PR workflow on push to `main`. |

## Known Gaps

- **Versioning tooling is inconsistent across sources.** `package.json` exposes `changelogen` bump scripts (`bump:patch|minor|major` → `sync`) and there is no `.changeset/` directory, yet `README.md`'s "Releasing a new version" section documents a changesets workflow (`npm run changeset` / `npm run version`) that does not exist as scripts, and `.github/workflows/release.yml` still runs `changesets/action@v1` with `npx changeset version`. Owning paths: `package.json`, `README.md`, `.github/workflows/release.yml`. Decide which tooling is canonical and align all three.
