
# dotfiles

Minimal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## 📂 Setup

Clone into `~/personal/dotfiles`:

```bash
mkdir -p ~/personal
git clone https://github.com/mosahel01/dotfiles ~/personal/dotfiles
cd ~/personal/dotfiles
```

Symlink configs using `stow`:

```bash
./stow-all.sh

# stow zsh
# stow nvim
# stow zsh
# stow tmux
# stow ghostty
# stow hypr
# stow waybar
# stow keepassxc
# stow bin
```

Each directory corresponds to a set of configs (e.g. `nvim`, `zsh`, etc.).

Extras
```bash
sudo pacman -S

alacritty
amd-ucode
brightnessctl
btop
discord
dmenu
dunst
gimp
git
gnome-keyring
gnu-free-fonts
luarocks
polkit-gnome
nautilus
neovim
nodejs
noto-fonts
noto-fonts-cjk
noto-fonts-emoji
noto-fonts-extra
npm
obs-studio
openssh
quickshell
rofi
trash-cli
ttc-iosevka
ttf-font-awesome
ttf-iosevka-nerd
ttf-iosevkaterm-nerd
ttf-jetbrains-mono
ttf-jetbrains-mono-nerd
ttf-liberation
unzip
xdg-desktop-portal
xdg-desktop-portal-gnome
xdg-desktop-portal-gtk
xwayland-satellite
xorg-xset
yazi


# i3/xorg specifics
copyq
flameshot
i3-wm
i3lock
i3status
picom
redshift

# Hyprland/wayland specifics
aquamarine
cliphist
grim
hyprland
hyprlock
hyprpaper
hyprpolkitagent
hyprsunset
slurp
waybar
wl-clipboard
xdg-desktop-portal-hyprland

# AUR
intellij-idea-ultimate-edition
brave-bin
boomer-git
noto-fonts-variable-ar
greenclip

```

## 🧹 Uninstall

To remove symlinks:

```bash
stow -D nvim
```

