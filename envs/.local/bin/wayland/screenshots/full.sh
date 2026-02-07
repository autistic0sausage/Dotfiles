#!/bin/bash
# ~/.local/bin/screenshots/full.sh

DIR=~/Pictures/Random/FS
mkdir -p "$DIR"

FILE="$DIR/screenshot_$(date +%b-%d_%H:%M).png"

grim - | wl-copy
wl-paste >"$FILE"

# notify-send "📸 Screenshot (Fullscreen)" "$FILE"
