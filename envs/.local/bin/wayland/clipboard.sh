bin/bash
# Clipboard history picker using rofi + cliphist

SELECTION=$(cliphist list | rofi -dmenu -theme-str 'window { width: 50%; }')

if [ -n "$SELECTION" ]; then
    echo "$SELECTION" | cliphist decode | wl-copy
    # notify-send "📋 Clipboard" "Item copied"
fi

