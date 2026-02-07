#!/bin/bash
# ~/.local/bin/screenshots/random.sh

DIR=~/Pictures/Random
mkdir -p "$DIR"

FILE="$DIR/screenshot_$(date +%b-%d_%H:%M).png"
 
grim -g "$(slurp -d)" - | wl-copy
wl-paste > "$FILE"

# notify-send "📸 Screenshot (Selection)" "$FILE"

