#!bin/bash

layout=$(i3-msg -t get_tree | jq -r '
	recurse(.nodes[]?, .floating_nodes[]?)
	| select(.focused)
	| .layout 
')

if [ "$layout" = "stacked" ]; then
	i3-msg split toggle 
else 
	i3-msg layout stacking 
fi
