#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SHARED_DIR="$ROOT_DIR/shared"

for pkg in \
  "$ROOT_DIR/packages/codex-ren-zhengfei" \
  "$ROOT_DIR/packages/claude-code-ren-zhengfei" \
  "$ROOT_DIR/packages/openclaw-ren-zhengfei"
do
  mkdir -p "$pkg/references"
  cp "$SHARED_DIR/work.md" "$pkg/references/work.md"
  cp "$SHARED_DIR/persona.md" "$pkg/references/persona.md"
  cp "$SHARED_DIR/evidence.md" "$pkg/references/evidence.md"
  cp "$SHARED_DIR/meta.json" "$pkg/meta.json"
done

echo "Shared content synced into packages/."
