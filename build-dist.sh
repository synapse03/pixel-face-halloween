#!/bin/bash
# Rebuilds dist/pixel-face-halloween.zip from the files in this repo.
set -e
cd "$(dirname "$0")"
STAGE="$(mktemp -d)/pixel-face"
mkdir -p "$STAGE"
cp -r pixel-face.html fonts README.txt "Start kiosk (Windows).bat" "Start kiosk (Mac).command" start-kiosk-linux.sh "$STAGE/"
chmod +x "$STAGE/Start kiosk (Mac).command" "$STAGE/start-kiosk-linux.sh"
mkdir -p dist
rm -f dist/pixel-face-halloween.zip
( cd "$(dirname "$STAGE")" && zip -rX - pixel-face ) > dist/pixel-face-halloween.zip
echo "Built dist/pixel-face-halloween.zip"
