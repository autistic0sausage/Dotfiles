#!/bin/sh

# Vi-style editing
set -o vi

# Prompt
force_color_prompt=yes
color_prompt=yes
PS1='\[\e[32m\]\u@\h \[\e[34m\]\w\[\e[0m\] \$ '

source ~/.config/zsh/alias.zsh
source ~/.config/zsh/environment.zsh
source ~/.config/zsh/functions.zsh
source ~/.config/zsh/plugins.zsh
