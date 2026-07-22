# Constraints

## Release and Versioning

- [high | assistant] `plugin.json`'s `version` must equal `package.json`'s `version`.
  Evidence: `scripts/sync-plugin.sh` copies the version; `README.md` states to keep them in sync; Claude Code reads the plugin `version` to decide update visibility.

## Skill Authoring

- [high | assistant] Every skill folder carries both `SKILL.md` and `agents/openai.yaml`, and the invocation mode must match across both harnesses: a user-invoked skill sets `disable-model-invocation: true` in `SKILL.md` frontmatter **and** `policy.allow_implicit_invocation: false` in `agents/openai.yaml`; a model-invoked skill omits both.
  Evidence: `.agents/invocation.md`; `README.md` "Develop" step 2; the two-harness publish contract.

- [high | assistant] A user-invoked skill may invoke model-invoked skills but never another user-invoked skill; nothing but the human can fire a user-invoked skill.
  Evidence: `.agents/invocation.md`.

## Inventory and Discovery

- [high | user] Every skill must be listed in `.claude-plugin/plugin.json`'s `skills` array and in the `README.md` Reference section (under User-invoked or Model-invoked). After adding, removing, renaming, or changing a skill's description or invocation mode, re-sync the `README.md` skill list so its name, one-line description, and User-invoked vs Model-invoked grouping match the current `SKILL.md`.
  Evidence: user requirement (this session); `README.md` "Develop" steps 3–4; `.claude-plugin/plugin.json` `skills[]`.

- [low | assistant] Skill discovery excludes `node_modules/` and `deprecated/` paths.
  Evidence: `scripts/link-skills.sh`, `scripts/list-skills.sh` `find` filters.

## Local Install

- [medium | assistant] `scripts/link-skills.sh` is maintainer-only and not a supported installer; re-run it after adding, removing, or renaming a skill.
  Evidence: header comment in `scripts/link-skills.sh`; `README.md` "From source".
