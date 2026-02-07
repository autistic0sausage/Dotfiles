#!/bin/bash

# Kill any running waybar
pkill waybar

# Toggle state file
STATE_FILE="$HOME/.cache/waybar_mode"

if [[ -f "$STATE_FILE" && "$(cat "$STATE_FILE")" == "study" ]]; then
    # Switch back to primary mode
    # waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css & hyprpaper &
    waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css &

    echo "primary" >"$STATE_FILE"
else
    # Switch to study mode
    # waybar -c ~/.config/waybar/study/config -s ~/.config/waybar/study/style.css & pkill hyprpaper
    waybar -c ~/.config/waybar/minimal/config -s ~/.config/waybar/minimal/style.css &
    echo "study" >"$STATE_FILE"
fi
