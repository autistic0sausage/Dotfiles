### ------------------------------
### Aliases
### ------------------------------

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
alias vim='nvim'
alias N='cd ~/.config/nvim/lua/plugins && nvim .'
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

# File Converter
alias to-pdf='abiword --to=pdf'

# Fuzzy find & preview (open in nvim on Enter)
alias ff="fzf --preview 'bat --style=numbers --color=always {}' --bind 'enter:become(nvim {})'"
