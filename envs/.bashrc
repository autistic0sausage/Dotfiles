### ------------------------------
### Environment
### ------------------------------

# Path
export PATH="./bin:$HOME/.local/bin:$PATH"

# Editor
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"

# # For QT Wayland support
# export QT_QPA_PLATFORM=xcb
# export QT_QPA_PLATFORM=wayland

# # For Cargo/Rust support
# export PATH="$HOME/.cargo/bin:$PATH"
# export CARGO_HOME="$HOME/.cargo"
# export RUSTUP_HOME="$HOME/.rustup"

# # For NVIDIA Wayland support
# export GBM_BACKEND=nvidia-drm
# export __GLX_VENDOR_LIBRARY_NAME=nvidia
# export WLR_NO_HARDWARE_CURSORS=1

# # Optional: Force GPU acceleration
# export __NV_PRIME_RENDER_OFFLOAD=1
# export __VK_LAYER_NV_optimus=NVIDIA_only

### ------------------------------
### Shell Behavior
### ------------------------------

shopt -s autocd     # type dir name to cd
shopt -s nocaseglob # case-insensitive file globbing

case $- in *i*) ;; *) return ;; esac # only interactive shell

# History
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
PMROMPT_COMMAND="history -a; $PROMPT_COMMAND"
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Autocompletion
if [[ ! -v BASH_COMPLETION_VERSINFO && -f /usr/share/bash-completion/bash_completion ]]; then
    source /usr/share/bash-completion/bash_completion
fi

# Vi-style editing
set -o vi

# Prompt
force_color_prompt=yes
color_prompt=yes
PS1='\[\e[32m\]\u@\h \[\e[34m\]\w\[\e[0m\] \$ '

# Key bindings
bind 'TAB:menu-complete'             # cycle forward
bind '"\e[Z":menu-complete-backward' # cycle backward
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

### ------------------------------
### Readline (Input Behavior)
### ------------------------------

bind 'set colored-stats on'
bind 'set completion-prefix-display-length 2'
bind 'set completion-query-items 200'
bind 'set mark-symlinked-directories on'
bind 'set match-hidden-files off'
bind 'set page-completions off'
bind 'set show-all-if-unmodified on'
bind 'set skip-completed-text on'
bind 'set visible-stats on'

### ------------------------------
### Aliases
### ------------------------------

# # # File system
# alias ls='eza'
# alias l='ls -l'
# alias la='ls -a'
# alias ll='ls -al'
# alias lt='ls --tree --level=2'
# alias ltree='ls --tree --level=3'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias dark="gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'"
alias light="gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'"

# Tools
alias v='nvim'
alias n='nvim'
alias c='clear'
alias e='exit'
alias y='yazi'

# alias cat='bat'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias cp='cp -i'
alias caps='xset r rate 200 50 && setxkbmap -option caps:swapescape'
# alias colemak='setxkbmap us -variant colemak'
# alias qwerty='setxkbmap us '

# Config shortcuts
# alias nvim='vim'
alias H='nvim ~/Dotfiles/hypr/.config/hypr/hyprland.conf'
# alias I='nvim ~/Dotfiles/i3/.config/i3/config'
# alias N='nvim ~/.config/niri/config.kdl'
alias N='nvim ~/Dotfiles/nvim/.config/nvim/init.lua'
alias J='cd ~/Documents/Java && nvim'
alias Z='nvim ~/.bashrc && source ~/.bashrc'
alias D='nvim ~/Dotfiles/stow-all.sh && ~/Dotfiles/./stow-all.sh '

# Git
alias gs='git status'
alias gm='git commit -m'
alias ga='git add'
alias gp='git push -u origin main'

# Tmux
alias tn='tmux new -s '          # new session
alias ta='tmux attach'           # attach latest
alias tt='tmux attach -t '       # attach specific
alias ts='tmux ls'               # list sessions
alias tk='tmux kill-session -t ' # kill by name

# Pacman / AUR
alias ps='sudo pacman -S'
alias pss='pacman -Ss'
alias prns='sudo pacman -Rns'

alias ys='yay -S'
alias yss='yay -Ss'
alias yrns='yay -Rns'

# alias ys='paru -S'
# alias yss='paru -Ss'
# alias yrns='paru -Rns'

# Yt-dlp
alias yt-audio-high='yt-dlp -f "bestaudio[ext=m4a]" '
alias yt-video-high=' yt-dlp -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]"  '
alias yt-video-low='yt-dlp -f "worstvideo+bestaudio" '
alias yt-playlist='yt-dlp -f "bestvideo+bestaudio" '

alias to-pdf='abiword --to=pdf'

### ------------------------------
### Functions
### ------------------------------

# Open files with default program
open() { xdg-open "$@" >/dev/null 2>&1 & }

# # Smart nvim (open file(s) or current dir)
# n() { if [ $# -eq 0 ]; then nvim .; else nvim "$@"; fi; }

# Fuzzy find & preview (open in nvim on Enter)
alias ff="fzf --preview 'bat --style=numbers --color=always {}' --bind 'enter:become(nvim {})'"

# Compression
compress() { tar -czf "${1%/}.tar.gz" "${1%/}"; }
alias decompress="tar -xzf"

# Video transcoding
transcode-video-1080p() {
    ffmpeg -i "$1" -vf scale=1920:1080 -c:v libx264 -preset fast -crf 23 -c:a copy "${1%.*}-1080p.mp4"
}
transcode-video-4K() {
    ffmpeg -i "$1" -c:v libx265 -preset slow -crf 24 -c:a aac -b:a 192k "${1%.*}-optimized.mp4"
}

# PNG → JPG (good for wallpapers)
transcode-png2jpg() {
    magick "$1" -quality 95 -strip "${1%.*}.jpg"
}

### ------------------------------
### External Sources
### ------------------------------

# Custom/Modular dotfiles
# [[ -f ~/Dotfiles/bin/.local/bin/bash/rc ]] && source ~/Dotfiles/bin/.local/bin/bash/rc
# . "$HOME/.cargo/env"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
