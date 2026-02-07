#!/usr/bin/env bash

# Clipboard launcher using Greenclip + Rofi
# Works with i3 or any other X11-based WM.

# Launch rofi clipboard selector
chosen=$(rofi -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}' -theme-str '
    window {
        width: 40%;
        transparency: "real";
        border: 0px;
        padding: 10px;
    }
    listview {
        lines: 10;
        scrollbar: false;
    }
    entry {
        placeholder: "Search clipboard history...";
    }
')

# If something was selected, copy it to clipboard
if [ -n "$chosen" ]; then
    echo -n "$chosen" | xclip -selection clipboard
fi

