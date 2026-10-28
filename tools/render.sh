#!/usr/bin/env bash
# Renders the profile images into ../profile/assets with headless Chromium,
# at 2x so they stay sharp when GitHub scales them down.
#
#   ./render.sh                  # uses $CHROME, or the first Chromium it finds
#   CHROME=/path/to/chrome ./render.sh
set -euo pipefail
here=$(cd "$(dirname "$0")" && pwd)
out="$here/../profile/assets"
mkdir -p "$out"

chrome=${CHROME:-}
if [[ -z $chrome ]]; then
  for c in chromium chromium-browser google-chrome google-chrome-stable \
           ~/.cache/ms-playwright/chromium-*/chrome-linux*/chrome; do
    if command -v "$c" >/dev/null 2>&1 || [[ -x $c ]]; then chrome=$c; break; fi
  done
fi
[[ -n $chrome ]] || { echo "no Chromium found; set CHROME" >&2; exit 1; }

shot() { # page, width, height, output
  "$chrome" --headless=new --no-sandbox --disable-gpu --hide-scrollbars \
    --force-device-scale-factor=2 --default-background-color=00000000 \
    --window-size="$2,$3" --virtual-time-budget=6000 \
    --screenshot="$out/$4" "file://$here/$1" 2>/dev/null
  echo "$4"
}

shot banner.html           1280 360 banner-light.png
shot 'banner.html?dark'    1280 360 banner-dark.png
shot 'card.html?openams'    800 640 openams.png
shot 'card.html?openams-ui' 800 640 openams-ui.png

# The Cortex Bridge photo is 1.6 MB as a PNG; WebP keeps the rounded,
# transparent corners at a tenth of that.
magick "$out/openams.png" -quality 88 -define webp:alpha-quality=100 "$out/openams.webp"
rm "$out/openams.png"
echo openams.webp
