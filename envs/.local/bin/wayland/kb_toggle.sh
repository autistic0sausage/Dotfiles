#!/bin/bash

# Define the paths to your configuration files
HYPRLAND_CONF="$HOME/.config/hypr/hyprland.conf"
HYPRLAND_COLEMAK="$HOME/.config/hypr/hyprland.colemak"
HYPRLAND_QWERTY="$HOME/.config/hypr/hyprland.qwerty"

# Check the current configuration and swap accordingly
if [ -f "$HYPRLAND_COLEMAK" ] && cmp -s "$HYPRLAND_CONF" "$HYPRLAND_COLEMAK"; then
    # If current is Colemak, switch to QWERTY
    cp "$HYPRLAND_QWERTY" "$HYPRLAND_CONF"
    echo "Switched to QWERTY configuration."
elif [ -f "$HYPRLAND_QWERTY" ] && cmp -s "$HYPRLAND_CONF" "$HYPRLAND_QWERTY"; then
    # If current is QWERTY, switch toColemak
    cp "$HYPRLAND_COLEMAK" "$HYPRLAND_CONF"
    echo "Switched to Colemak configuration."
else
    echo "Current configuration does not match either layout."
fi

# Reload Hyprland configuration
hyprctl reload
