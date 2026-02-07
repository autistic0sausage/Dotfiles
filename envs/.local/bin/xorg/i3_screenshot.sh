#!/bin/bash
# ~/.local/bin/screenshots/full.sh

DIR=~/Pictures/Random/FS
mkdir -p "$DIR"

FILE="$DIR/screenshot_$(date +%b-%d_%H:%M).png"

scrot "$FILE"

xclip -selection clipboard -t image/png < "$FILE"

notify-send "📸 Screenshot (Fullscreen)" "$FILE"
 
