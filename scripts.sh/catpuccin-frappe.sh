#!/bin/bash

cat ~/.config/kitty/themes/Catppuccin-Frappe.conf >~/.config/kitty/current-theme.conf
sed -i '54c\colorscheme = "catppuccin",' ~/.config/nvim/lua/plugins/catpuccin.lua
kill -SIGUSR1 $KITTY_PID

cat ~/.config/waybar/catppuccin/style.css >~/.config/waybar/style.css
~/.config/waybar/launch.sh

awww img --transition-type center ~/Imágenes/wallpapers/catppuccin/monte.png
