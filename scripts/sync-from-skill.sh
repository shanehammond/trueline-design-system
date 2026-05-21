#!/usr/bin/env bash
# Sync brand/ and briefing/ from the canonical Trueline skill.
#
# Source of truth: ~/.claude/skills/trueline/ (user-level Claude Code skill).
# When the skill's references or briefing pack change, run this from the
# repo root to pull the latest copies in, then review `git status` /
# `git diff` and commit if happy.
#
# Logos are not synced — their source files live in the private
# trueline-business repo (brand/_Trueline-Logo-Files/) and rarely change.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_ROOT="${HOME}/.claude/skills/trueline"

if [[ ! -d "$SKILL_ROOT" ]]; then
  echo "ERROR: skill not found at $SKILL_ROOT" >&2
  echo "Install the Trueline skill first (extract trueline.skill zip from the brand assets)." >&2
  exit 1
fi

echo "Syncing from: $SKILL_ROOT"
echo "         to: $REPO_ROOT"
echo

# brand/ — 5 canonical reference files
echo "--- brand/ ---"
for f in PLATFORM.md AUDIENCE.md VOICE.md BRAND.md COMPANY.md; do
  src="$SKILL_ROOT/references/$f"
  dst="$REPO_ROOT/brand/$f"
  if [[ ! -f "$src" ]]; then
    echo "  MISSING in skill: $f (skipping)"
    continue
  fi
  cp "$src" "$dst"
  echo "  synced $f"
done

# briefing/ — full 7-file AI Briefing Pack
echo "--- briefing/ ---"
for f in \
  Trueline-AI-Briefing-Pack.md \
  Trueline-AI-Briefing-Pack.pdf \
  Trueline-AI-Briefing-Pack.typ \
  Claude-Project-Instructions.md \
  ChatGPT-Custom-GPT-Instructions.md \
  Copilot-Agent-Instructions.md \
  README.md; do
  src="$SKILL_ROOT/briefing/$f"
  dst="$REPO_ROOT/briefing/$f"
  if [[ ! -f "$src" ]]; then
    echo "  MISSING in skill: $f (skipping)"
    continue
  fi
  cp "$src" "$dst"
  echo "  synced $f"
done

echo
echo "--- git status ---"
cd "$REPO_ROOT"
git status --short

echo
echo "Done. Review the diff (git diff) and commit if happy."
echo "Nothing has been staged or committed."
