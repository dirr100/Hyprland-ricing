#!/bin/bash

# Setup main programs
sudo pacman -Syu --noconfirm
sudo pacman -S firefox hyprland sddm pavucontrol waybar rofi neovim zsh kitty --noconfirm
# Setup yay
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

# Set up directories
mkdir -p $HOME/.config/hypr/ $HOME/.config/waybar $HOME/.config/nvim $HOME/.config/rofi
