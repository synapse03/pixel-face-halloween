#!/bin/bash
# Opens Pixel Face fullscreen with no browser toolbar or frame. Exit with Cmd+Q.
cd "$(dirname "$0")" || exit 1
PAGE="$(pwd)/pixel-face.html"
PROFILE="${TMPDIR:-/tmp}/pixel-face-kiosk"

for APP in "Google Chrome" "Microsoft Edge" "Chromium" "Brave Browser"; do
  if open -Ra "$APP" 2>/dev/null; then
    open -na "$APP" --args --kiosk --autoplay-policy=no-user-gesture-required --user-data-dir="$PROFILE" --no-first-run --no-default-browser-check "$PAGE"
    exit 0
  fi
done
if open -Ra "Firefox" 2>/dev/null; then
  open -na "Firefox" --args --kiosk "$PAGE"
  exit 0
fi
echo "Chrome, Edge or Firefox was not found. Opening in your default browser."
echo "Press Enter on the page to go fullscreen."
open "$PAGE"
