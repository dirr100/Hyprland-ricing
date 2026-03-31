#!/bin/bash

source "$HOME/Hyprland-rice/scripts.sh/routes.sh"
source "$HOME/Hyprlnad-rice/scripts.sh/temas"
TEMA=$1

if [ "$TEMA" == 'gruvbox' ]; then
  awww img --transition-type center ~/Imágenes/wallpapers/gruvbox/White-Mountain.jpg
  ln -sf "$waybar_gruvbox" "$waybar_root"
    killall -SIGUSR2 waybar
    sed -i 's/colorscheme = .*/colorscheme = "'$TEMA'"/' "$TEMA_NVIM"
  ln -sf "$kitty_gruvbox" "$kitty_current"

elif [ "$TEMA" == 'catppuccin' ]; then
  awww img --transition-type center ~/Imágenes/wallpapers/catppuccin/monte.png
  ln -sf "$waybar_catppuccin" "$waybar_root"
  killall -SIGUSR2 waybar
  sed -i 's/colorscheme = .*/colorscheme = "'$TEMA'"/' "$TEMA_NVIM"
  ln -sf "$kitty_catppuccin" "$kitty_current"
fi
