#!/bin/bash
# ~/.local/bin/screenshots/random.sh

DIR=~/Pictures/Random
mkdir -p "$DIR"

# Take the screenshot and copy to clipboard
grim -g "$(slurp -d)" - | wl-copy

# Optionally notify the user
# notify-send "📸 Screenshot (Selection)" "Screenshot copied to clipboard"
