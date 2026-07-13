#!/usr/bin/env bash
# Easiest macOS install: Homebrew cask + ad-hoc re-sign + launch.
# Usage: curl -fsSL https://raw.githubusercontent.com/MangkornKW/homebrew-hydratree/main/scripts/install-mac-easy.sh | bash
#
# Requires: Homebrew (https://brew.sh) on Apple Silicon Mac.

set -euo pipefail

APP="/Applications/HydraTree.app"
CASK="MangkornKW/hydratree/hydratree"

if [[ "$(uname -m)" != "arm64" ]]; then
  echo "HydraTree macOS builds are Apple Silicon only (arm64)." >&2
  exit 1
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is required. Install from https://brew.sh then re-run this script." >&2
  exit 1
fi

echo "→ Installing HydraTree via Homebrew…"
brew install --cask "$CASK"

if [[ -d "$APP" ]]; then
  echo "→ Ad-hoc signing (unsigned build)…"
  codesign --force --deep --sign - "$APP"
fi

echo "→ Launching HydraTree…"
open -a HydraTree

echo ""
echo "✓ Done. If macOS blocks the first launch: Right-click HydraTree → Open once."
