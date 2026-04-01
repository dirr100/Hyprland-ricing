#!/bin/bash

# routes used on variables
source "$HOME/Hyprland-rice/scripts.sh/routes.sh"

gruvbox() {
  awww img --transition-type center ~/Imágenes/wallpapers/gruvbox/White-Mountain.jpg
  ln -sf "$waybar_gruvbox" "$waybar_root"
  killall -SIGUSR2 waybar
  sed -i 's/colorscheme = .*/colorscheme = "'$TEMA'"/' "$TEMA_NVIM"
  ln -sf "$kitty_gruvbox" "$kitty_current"
  killall -SIGUSR2 $KITTY_PID
}

catppuccin() {
  awww img --transition-type center ~/Imágenes/wallpapers/catppuccin/monte.png
  ln -sf "$waybar_catppuccin" "$waybar_root"
  killall -SIGUSR2 waybar
  sed -i 's/colorscheme = .*/colorscheme = "'catppuccin-frappe'"/' "$TEMA_NVIM"
  ln -sf "$kitty_catppuccin" "$kitty_current"
  killall -SIGUSR2 $KITTY_PID
}

everforest() {
  awww img --transition-type center ~/Imágenes/wallpapers/everforest/stairsforest.jpg
  ln -sf "$waybar_everforest" "$waybar_root"
  killall -SIGUSR2 waybar
  sed -i 's/colorscheme = .*/colorscheme = "'$TEMA'"/' "$TEMA_NVIM"
  ln -sf "$kitty_everforest" "$kitty_current"
  killall -SIGUSR2 $KITTY_PID
}
