#!/bin/bash

source "$HOME/Hyprland-rice/scripts.sh/temas.sh"

TEMA=$1

if [ "$TEMA" == 'gruvbox' ]; then
  gruvbox
elif [ "$TEMA" == 'catppuccin' ]; then
  catppuccin
elif [ "$TEMA" == 'everforest' ]; then
  everforest
fi
