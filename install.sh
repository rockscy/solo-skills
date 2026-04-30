#!/usr/bin/env bash
# solo-skills installer
# Drops skill directories into ~/.claude/skills/ without overwriting existing ones.

set -euo pipefail

REPO_RAW="https://raw.githubusercontent.com/rockscy/solo-skills/main"
SKILLS=(
  ship-decision
  launch-tweet
  changelog-from-commits
  bug-from-user
  standup-solo
  email-customer
  postmortem-solo
)

DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$DEST"

echo "Installing solo-skills to: $DEST"
echo

installed=0
skipped=0
failed=0

for skill in "${SKILLS[@]}"; do
  target_dir="$DEST/$skill"
  target_file="$target_dir/SKILL.md"

  if [ -e "$target_file" ]; then
    echo "  [skip] $skill — already exists"
    skipped=$((skipped + 1))
    continue
  fi

  mkdir -p "$target_dir"
  url="$REPO_RAW/skills/$skill/SKILL.md"

  if curl -fsSL "$url" -o "$target_file"; then
    echo "  [ok]   $skill"
    installed=$((installed + 1))
  else
    echo "  [fail] $skill — could not download from $url" >&2
    rmdir "$target_dir" 2>/dev/null || true
    failed=$((failed + 1))
  fi
done

echo
echo "Done. Installed: $installed | Skipped: $skipped | Failed: $failed"

if [ "$installed" -gt 0 ]; then
  cat <<MSG

Open Claude Code and type "/" — you should see the new skills in the list.
打开 Claude Code 输入 "/" 即可看到新技能。

If a skill name conflicts with one you already had, this installer left yours alone.
To force-update, remove the old folder first:

    rm -rf $DEST/<skill-name>
    bash install.sh

MSG
fi

if [ "$failed" -gt 0 ]; then
  exit 1
fi
