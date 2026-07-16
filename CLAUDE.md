Skills live as one folder per skill under `skills/`:

```
skills/
  <skill-name>/
    SKILL.md          # frontmatter (name, description, optional disable-model-invocation) + the skill body
    agents/openai.yaml   # Codex UI metadata + invocation policy (keep in sync with SKILL.md)
```

Every skill in `skills/` is shipped by the Claude Code plugin and must have an entry in the top-level `README.md`'s **Reference** list and a path in `.claude-plugin/plugin.json`'s `skills` array. Run `claude plugin validate . --strict` after touching either manifest.

The repo is also its own single-plugin Claude Code marketplace: `.claude-plugin/marketplace.json` lists the one `hclz-skills` plugin (install with `claude plugin install hclz-skills@hcl-z`). When bumping the release version, keep `.claude-plugin/plugin.json`'s `version` in sync with `package.json`'s — Claude uses the plugin `version` to decide when installed users see an update.

Every `SKILL.md` is either user-invoked (`disable-model-invocation: true` plus `policy.allow_implicit_invocation: false` in `agents/openai.yaml`, reachable only by the human) or model-invoked (model- or user-reachable). See [.agents/invocation.md](./.agents/invocation.md).

To (re)link every skill into the local harness skill directories (`~/.claude/skills`, `~/.agents/skills`), run `scripts/link-skills.sh`. Each entry is a symlink into this repo, so a `git pull` keeps installed skills current; re-run the script after adding, removing, or renaming a skill.
