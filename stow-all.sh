#!/bin/bash

DOTDIR=$HOME/Dotfiles
TARGET=$HOME

cd "$DOTDIR" || exit 1

# for pkg in alacritty awesome bash bin fish ghostty hypr ideavimrc kitty nvim rofi starship tmux waybar zed zsh; do
for pkg in alacritty envs i3 ideavimrc nvim rofi; do
    stow --dir="$DOTDIR" --target="$TARGET" "$pkg"
done
