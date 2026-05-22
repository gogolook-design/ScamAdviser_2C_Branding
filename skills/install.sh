#!/usr/bin/env bash
# ScamAdviser B2C — Skill Pack Installer
# Copies the three ScamAdviser skills into ~/.claude/skills/
# Usage: ./skills/install.sh

set -e

# Resolve script location so this works from any cwd
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGET="$HOME/.claude/skills"

if [ ! -d "$TARGET" ]; then
  mkdir -p "$TARGET"
  echo "Created $TARGET"
fi

SKILLS=(
  "scamadviser-brand"
  "scamadviser-web-ds"
  "scamadviser-brand-review"
)

echo "Installing ScamAdviser skill pack → $TARGET"
echo "─────────────────────────────────────────────"

for skill in "${SKILLS[@]}"; do
  SRC="$SCRIPT_DIR/$skill"
  DEST="$TARGET/$skill"

  if [ ! -d "$SRC" ]; then
    echo "  ✗ $skill — source folder not found at $SRC"
    continue
  fi

  if [ -d "$DEST" ]; then
    echo "  ↻ $skill — already installed, overwriting"
    rm -rf "$DEST"
  fi

  cp -R "$SRC" "$DEST"
  echo "  ✓ $skill"
done

echo "─────────────────────────────────────────────"
echo "Done. Restart Claude Code to pick up the new skills."
echo ""
echo "Verify with:"
echo "  /skill scamadviser-brand"
echo "  /skill scamadviser-web-ds"
echo "  /skill scamadviser-brand-review"
