#!/bin/bash

theme="../themes-menu/style.rasi"

option=$(printf "catppuccin\ngruvbox\neverforest" | rofi -dmenu -p "Themes" -theme $theme)

case "$option" in
"catppuccin") exec ~/Hyprland-rice/scripts.sh/theme-changer/themechanger.sh catppuccin ;;
"gruvbox") exec ~/Hyprland-rice/scripts.sh/theme-changer/themechanger.sh gruvbox ;;
"everforest") exec ~/Hyprland-rice/scripts.sh/theme-changer/themechanger.sh everforest ;;
esac

# option_1="exec $HOME/Hyprland-rice/scripts.sh/theme-changer/themechanger.sh everforest"
# option_2="$HOME/Hyprland-rice/scripts.sh/theme-changer/themechanger.sh gruvbox"
#
# echo -e "$option_1\n$option_2" | rofi -dmenu
