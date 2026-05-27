#!/usr/bin/env bash
set -euo pipefail

APP_ROOT="${APP_ROOT:-/opt/personal-lab-site}"
ARCHIVE="${1:-/tmp/personal-lab-site.tar.gz}"
RELEASE_ID="${2:-$(date +%Y%m%d%H%M%S)}"
RELEASE_DIR="$APP_ROOT/releases/$RELEASE_ID"

mkdir -p "$APP_ROOT/releases" "$APP_ROOT/shared"
mkdir -p "$RELEASE_DIR"
tar -xzf "$ARCHIVE" -C "$RELEASE_DIR"
ln -sfn "$RELEASE_DIR" "$APP_ROOT/current"
echo "$RELEASE_ID" > "$APP_ROOT/shared/current-release.txt"

if command -v nginx >/dev/null 2>&1; then
  sudo nginx -t
  sudo systemctl reload nginx
fi

echo "Deployed $RELEASE_ID to $APP_ROOT/current"
