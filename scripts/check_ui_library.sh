#!/usr/bin/env bash
set -euo pipefail
COMMON_DIR="/home/arvin/git/0COMMON/ui_library"
LOCAL_DIR="/home/arvin/git/flex_ai_education_module/ui_library"
for f in tokens.css chat.css editor.css; do
  if ! cmp -s "$COMMON_DIR/$f" "$LOCAL_DIR/$f"; then
    echo "FAIL: $f differs between $COMMON_DIR and $LOCAL_DIR"
    exit 1
  fi
done
echo "PASS: tokens.css, chat.css, editor.css are byte-identical"
