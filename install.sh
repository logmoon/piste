#!/usr/bin/env bash
# Copies this pipeline's AGENTS.md skeleton and .opencode/ config into a target project,
# never overwriting anything that already exists there.
#
# Usage (from within this repo):
#   ./install.sh /path/to/your-project
#
# Once this repo has a home on GitHub, this becomes runnable as:
#   curl -fsSL https://raw.githubusercontent.com/<you>/<repo>/main/install.sh | bash -s -- /path/to/your-project

set -euo pipefail

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${1:?Usage: install.sh /path/to/your-project}"

if [[ ! -d "$TARGET" ]]; then
  echo "Target directory does not exist: $TARGET" >&2
  exit 1
fi

copy_if_missing() {
  local src="$1" dst="$2"
  if [[ -e "$dst" ]]; then
    echo "skip (exists):  $dst"
  else
    mkdir -p "$(dirname "$dst")"
    cp "$src" "$dst"
    echo "installed:      $dst"
  fi
}

copy_if_missing "$SRC_DIR/AGENTS.md" "$TARGET/AGENTS.md"

while IFS= read -r -d '' file; do
  rel="${file#"$SRC_DIR"/}"
  copy_if_missing "$file" "$TARGET/$rel"
done < <(find "$SRC_DIR/.opencode" -type f -print0)

echo ""
echo "Done. Next: cd $TARGET && opencode, then run /setup."
