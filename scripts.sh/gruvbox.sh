#!/bin/bash

awww img --transition-type center ~/Imágenes/wallpapers/gruvbox/White-Mountain.jpg

cat ~/.config/kitty/themes/gruvbox-dark.conf >~/.config/kitty/current-theme.conf
sed -i '54c\colorscheme = "gruvbox",' ~/.config/nvim/lua/plugins/catpuccin.lua
kill -SIGUSR1 $KITTY_PID

cat ~/.config/waybar/gruvbox/style.css >~/.config/waybar/style.css
~/.config/waybar/launch.sh

sed -i '18c\@import "~/.config/rofi/colors/gruvbox.rasi"' ~/.config/rofi/launchers/type-2/shared/colors.rasi
