#!/usr/bin/env bash
set -euo pipefail

# Syncs .claude-plugin/plugin.json with the repo's current state:
#   - version  ← package.json's version
#   - skills[] ← every directory under skills/ that contains a SKILL.md
#
# Why: Claude Code uses the plugin `version` to decide when installed users
# see an update, and the `skills` array must list every shipped skill. This
# keeps both in sync from a single source of truth so neither drifts.
#
# Usage: scripts/sync-plugin.sh [--check]
#   --check  exit non-zero if plugin.json would change, without writing

REPO="$(cd "$(dirname "$0")/.." && pwd)"
PLUGIN="$REPO/.claude-plugin/plugin.json"
PACKAGE="$REPO/package.json"

CHECK=0
if [ "${1:-}" = "--check" ]; then
  CHECK=1
fi

node - "$PACKAGE" "$PLUGIN" "$REPO" "$CHECK" <<'NODE'
const [pkgPath, pluginPath, repo, checkStr] = process.argv.slice(2);
const check = checkStr === "1";
const fs = require("fs");
const path = require("path");

const pkg = JSON.parse(fs.readFileSync(pkgPath, "utf8"));
if (typeof pkg.version !== "string" || !pkg.version) {
  console.error(`error: package.json has no version field`);
  process.exit(1);
}

// Discover skills the same way list-skills.sh / link-skills.sh do: every
// directory under skills/ that holds a SKILL.md (excluding node_modules and
// deprecated). Sorted for a stable, diff-friendly manifest.
const skillsDir = path.join(repo, "skills");
const skills = [];
for (const entry of fs.readdirSync(skillsDir, { withFileTypes: true })) {
  if (!entry.isDirectory()) continue;
  const skillMd = path.join(skillsDir, entry.name, "SKILL.md");
  if (fs.existsSync(skillMd)) skills.push(`./skills/${entry.name}`);
}
skills.sort();

const plugin = JSON.parse(fs.readFileSync(pluginPath, "utf8"));
const before = JSON.stringify(plugin, null, 2) + "\n";

plugin.version = pkg.version;
plugin.skills = skills;

// Preserve a trailing newline to match the repo's existing files.
const after = JSON.stringify(plugin, null, 2) + "\n";

if (before === after) {
  console.log(`plugin.json already in sync (version ${pkg.version}, ${skills.length} skills).`);
  process.exit(0);
}

if (check) {
  console.error("plugin.json is out of sync. Run `scripts/sync-plugin.sh` to fix.");
  process.exit(1);
}

fs.writeFileSync(pluginPath, after);
console.log(`synced plugin.json → version ${pkg.version}, ${skills.length} skills.`);
NODE
