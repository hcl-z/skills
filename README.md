# Skills

My personal collection of agent skills for Claude Code, Codex, and other Agent-Skills-compatible harnesses. Small, composable, easy to adapt. This repo is both the source of truth for the skills and a Claude Code plugin marketplace.

## Structure

Each skill is one folder under `skills/`:

```
skills/
  <name>/
    SKILL.md            # frontmatter (name, description, optional disable-model-invocation) + skill body
    agents/openai.yaml  # Codex UI metadata + invocation policy (keep in sync with SKILL.md)
```

Every skill is either:

- **User-invoked** — you type it (e.g. `/grilling`); it orchestrates. Marked with `disable-model-invocation: true` + `policy.allow_implicit_invocation: false`.
- **Model-invoked** — the agent reaches for it automatically when the task fits, or you type it. Holds reusable discipline.

A user-invoked skill may invoke model-invoked skills, but never another user-invoked one. See [`.agents/invocation.md`](./.agents/invocation.md).

## Install

### As a Claude Code plugin (managed, auto-updating)

```
/plugin marketplace add hcl-z/skills
/plugin install hclz-skills@hcl-z
```

Or from your shell:

```bash
claude plugin marketplace add hcl-z/skills
claude plugin install hclz-skills@hcl-z
```

### From source (editable)

Clone and link the skills into your local harness directories:

```bash
git clone https://github.com/hcl-z/skills.git
cd skills
./scripts/link-skills.sh
```

Each entry is a symlink into this repo, so a `git pull` keeps installed skills current. Re-run the script after adding, removing, or renaming a skill.

## Develop

To add or edit a skill:

1. Create `skills/<name>/SKILL.md` (frontmatter: `name`, `description`, and `disable-model-invocation: true` if user-invoked).
2. Add `skills/<name>/agents/openai.yaml` for Codex UI metadata (keep invocation policy in sync with the frontmatter).
3. Add an entry to the **Reference** section below.
4. Add the path to `.claude-plugin/plugin.json`'s `skills` array.
5. Run `claude plugin validate . --strict` to check the manifests.
6. Run `./scripts/link-skills.sh` to refresh the symlinks.

### Releasing a new version

Versions are managed with [changesets](https://github.com/changesets/changesets); the GitHub Actions workflow (`.github/workflows/release.yml`) opens a version PR on every push to `main`.

```bash
npm run changeset   # describe what changed → creates a .changeset/*.md entry
npm run version     # consume changesets → bumps package.json + plugin.json version + CHANGELOG
```

Keep `.claude-plugin/plugin.json`'s `version` in sync with `package.json`'s — Claude uses the plugin `version` to decide when installed users see an update.

## Reference

### User-invoked

- **[grilling](./skills/grilling/SKILL.md)** — Grill the user relentlessly about a plan, decision, or idea until every branch of the decision tree is resolved.
- **[handoff](./skills/handoff/SKILL.md)** — Compact the current conversation into a handoff document for another agent to pick up.
- **[improve-codebase-architecture](./skills/improve-codebase-architecture/SKILL.md)** — Scan a codebase for deepening opportunities, present them as a visual HTML report, then grill through whichever one you pick.
- **[reality-check](./skills/reality-check/SKILL.md)** — Pressure-test an idea against technical reality — feasibility, corrections, improvements — in discussion.
- **[to-spec](./skills/to-spec/SKILL.md)** — Turn the current conversation into a spec and publish it to the project issue tracker — no interview, just synthesis of what you've already discussed.
- **[work-bootstrap](./skills/work-bootstrap/SKILL.md)** — Scaffold a repo's AI-readable docs — `CLAUDE.md` plus the `docs/` knowledge base (DOMAIN, CONSTRAINTS, DESIGN) — where none exist yet.
- **[work-sync](./skills/work-sync/SKILL.md)** — Reconcile `CLAUDE.md` and `docs/` guidance with what the code actually does now, after behavior, contracts, commands, constraints, or UI rules changed.
- **[writing-great-skills](./skills/writing-great-skills/SKILL.md)** — Reference for writing and editing skills well — the vocabulary and principles that make a skill predictable.

### Model-invoked

- **[prototype](./skills/prototype/SKILL.md)** — Build a throwaway prototype to answer a design question: a runnable terminal app for state/logic, or several toggleable UI variations.

## License

[MIT](./LICENSE)
