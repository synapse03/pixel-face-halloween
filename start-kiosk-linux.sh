#!/bin/bash
# Opens Pixel Face fullscreen with no browser toolbar or frame. Exit with Alt+F4.
cd "$(dirname "$0")" || exit 1
PAGE="$(pwd)/pixel-face.html"
PROFILE="${TMPDIR:-/tmp}/pixel-face-kiosk"
for B in google-chrome google-chrome-stable chromium chromium-browser microsoft-edge brave-browser; do
  if command -v "$B" >/dev/null 2>&1; then
    exec "$B" --kiosk --autoplay-policy=no-user-gesture-required --user-data-dir="$PROFILE" --no-first-run --no-default-browser-check "$PAGE"
  fi
done
if command -v firefox >/dev/null 2>&1; then exec firefox --kiosk "$PAGE"; fi
echo "No supported browser found. Opening with the default app; press Enter on the page for fullscreen."
xdg-open "$PAGE"
