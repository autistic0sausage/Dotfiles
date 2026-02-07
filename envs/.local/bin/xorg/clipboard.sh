#!/bin/env bash 

# If clipmenu is not running, start it
if ! pgrep -x "clipmenu" > /dev/null; then
    clipmenu &
fi

# Use dmenu to select an item from the clipmenu history
selected=$(clipmenu -n 1 | dmenu -i -p "Select Clipboard:")

# Check if something was selected
if [ -n "$selected" ]; then
    # Copy the selected item back to the clipboard
    echo "$selected" | xclip -selection clipboard
fi

# clipmenu &  # This will run clipmenu in the background
# xclip -o | dmenu -i -p "Clipboard:" | xclip -selection clipboard  # Display clipboard content


# clipmenu &
#
# cmds=$(tac "$HOME/.bash_history")
# chosen=$(echo "$cmds" | dmenu -c -l 20 -p "Recent Commands:")
#
# if [ -n "$chosen" ]; then 
#     output=$(eval "$chosen" 2>/dev/null)
#     echo -n "$output" | xclip -selection clipboard
#     notify-send "Copied output of : " "$chosen"
# fi


# # Start clipmenu in the background
# clipmenu &
#
# # Get the clipboard history and pass it to dmenu
# selected=$(clipmenu -n 1 | dmenu -i -p "Select Clipboard:")
#
# # Check if something was selected
# if [ -n "$selected" ]; then
#     # Copy the selected item back to the clipboard
#     echo "$selected" | xclip -selection clipboard
# fi

