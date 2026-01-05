# Editor
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"

# Path
export PATH="$HOME/.local/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

### Shell Behavior
shopt -s autocd     # type dir name to cd
shopt -s nocaseglob # case-insensitive file globbing

case $- in *i*) ;; *) return ;; esac # only interactive shell

# History
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=2000
HISTFILESIZE=5000
shopt -s histappend
# PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Autocompletion
if [[ ! -v BASH_COMPLETION_VERSINFO && -f /usr/share/bash-completion/bash_completion ]]; then
    source /usr/share/bash-completion/bash_completion
fi

set -o vi

# # Prompt
force_color_prompt=yes
color_prompt=yes
# PS1='\[\e[32m\]\u@\h \[\e[34m\]\w\[\e[0m\] \$ '
PS1='\[\e[32m\][\u@\h \[\e[34m\]\W\[\e[32m\]]\[\e[0m\]\$ '


# Key bindings
bind 'TAB:menu-complete'             # cycle forward
bind '"\e[Z":menu-complete-backward' # cycle backward
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

### Readline (Input Behavior)
bind 'set colored-stats on'
bind 'set completion-map-case on '
bind 'set completion-prefix-display-length 2'
bind 'set completion-query-items 200'
bind 'set mark-symlinked-directories on'
bind 'set match-hidden-files off'
bind 'set menu-complete-display-prefix on'
bind 'set page-completions off'
bind 'set show-all-if-unmodified on'
bind 'set skip-completed-text off'
bind 'set visible-stats on'

### Aliases
# # File system
alias ls='eza'
alias l='ls -l'
alias la='ls -a'
alias ll='ls -al'
alias lt='ls --tree --level=2'
alias ltree='ls --tree --level=3'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias dark="gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'"
alias light="gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'"

# Tools
alias c='clear'
alias e='exit'
alias y='yazi'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'

# systemd
alias list_systemctl="systemctl list-unit-files --state=enabled"

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

alias caps='xset r rate 200 50 && setxkbmap -option caps:swapescape'

# Config shortcuts
alias I='nvim ~/.config/niri/config.kdl'
alias N='cd ~/.config/nvim/lua/plugins && nvim .'
alias J='cd ~/Documents/Java && nvim'
alias Z='nvim ~/.bashrc && source ~/.bashrc'
alias D='nvim ~/Dotfiles/stow-all.sh && ~/Dotfiles/./stow-all.sh '

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Git
alias gs='git status'
alias gm='git commit -m'
alias ga='git add'
alias gp='git push -u origin main'

gitpush() {
    git add .
    git commit -m "."
    git push -u origin main
}

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

alias ys='paru -S'
alias yss='paru -Ss'
alias yrns='paru -Rns'

# Yt-dlp
alias yt-audio-high='yt-dlp -f "bestaudio[ext=m4a]" '
alias yt-video-high=' yt-dlp -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]"  '
alias yt-video-low='yt-dlp -f "worstvideo+bestaudio" '
alias yt-playlist='yt-dlp -f "bestvideo+bestaudio" '

alias to-pdf='abiword --to=pdf'


# -- Functions -- #
# Open files with default program
open() { xdg-open "$@" >/dev/null 2>&1 & }

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
img2jpg() {
  magick "$1" -quality 85 -strip "${1%.*}.jpg"
}

