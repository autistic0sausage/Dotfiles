#!/bin/sh

# Enable persistent history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

# Configure the push directory stack (most people don't need this)
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Emacs keybindings
bindkey -e
# Use the up and down keys to navigate the history
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward

# Move to directories without cd
setopt autocd

# Initialize completion
autoload -U compinit; compinit

# The most important aliases ever (the only thing I borrowed from OMZ)
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'

alias c='clear'
alias e='exit'
alias y='yazi'

# alias nvim='vim'
alias I='nvim ~/Dotfiles/i3/.config/i3/config'
alias N='cd ~/.config/nvim/lua/plugins && nvim .'
alias Z='nvim ~/.bashrc && source ~/.bashrc'
alias D='nvim ~/Dotfiles/stow-all.sh && ~/Dotfiles/./stow-all.sh '

# Git
alias gs='git status'
alias gm='git commit -m'
alias ga='git add'
alias gp='git push -u origin main'

alias dark="gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'"
alias light="gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'"

# Pacman / AUR
alias ps='sudo pacman -S'
alias pss='pacman -Ss'
alias prns='sudo pacman -Rns'

alias ys='yay -S'
alias yss='yay -Ss'
alias yrns='yay -Rns'

# Yt-dlp
alias yt-audio-high='yt-dlp -f "bestaudio[ext=m4a]" '
alias yt-video-high=' yt-dlp -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]"  '
alias yt-video-low='yt-dlp -f "worstvideo+bestaudio" '
alias yt-playlist='yt-dlp -f "bestvideo+bestaudio" '

alias to-pdf='abiword --to=pdf'


# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up zoxide to move between folders efficiently
eval "$(zoxide init zsh)"

# # Set up the Starship prompt
# eval "$(starship init zsh)"[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# Prompt
force_color_prompt=yes
color_prompt=yes

