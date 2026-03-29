#!/usr/bin/env bash

## Adaptado para Spotify/Universal por Gemini
## Basado en el trabajo de Aditya Shakya (adi1090x)

# Import Current Theme
source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

# Obtener info del reproductor usando playerctl
status="$(playerctl status 2>/dev/null)"

if [[ -z "$status" ]]; then
  prompt='Offline'
  mesg="No hay nada reproduciendo"
else
  # Obtener Artista y Título
  artist="$(playerctl metadata artist)"
  title="$(playerctl metadata title)"
  prompt="${artist:-Desconocido}"
  mesg="${title:-Sin título} - $(playerctl metadata --format '{{ status }}')"
fi

# Configuración de columnas según el tema de adi1090x
if [[ ("$theme" == *'type-1'*) || ("$theme" == *'type-3'*) || ("$theme" == *'type-5'*) ]]; then
  list_col='1'
  list_row='4' # Bajamos a 4 opciones ya que Spotify no usa todas las de MPD
elif [[ ("$theme" == *'type-2'*) || ("$theme" == *'type-4'*) ]]; then
  list_col='4'
  list_row='1'
fi

# Iconos (Asegúrate de tener las fuentes instaladas abajo)
if [[ "$status" == "Playing" ]]; then
  option_1="" # Icono de Pausa
else
  option_1="" # Icono de Play
fi
option_2="󰙣" # Previous
option_3="󰙡" # Next
option_4="" # Stop

# Rofi CMD
rofi_cmd() {
  rofi -theme-str "listview {columns: $list_col; lines: $list_row;}" \
    -theme-str 'textbox-prompt-colon {str: "";}' \
    -dmenu \
    -p "$prompt" \
    -mesg "$mesg" \
    -markup-rows \
    -theme ${theme}
}

# Pasar variables a rofi
run_rofi() {
  echo -e "$option_1\n$option_2\n$option_3\n$option_4" | rofi_cmd
}

# Ejecutar Comandos usando playerctl
run_cmd() {
  if [[ "$1" == '--opt1' ]]; then
    playerctl play-pause
  elif [[ "$1" == '--opt2' ]]; then
    playerctl previous
  elif [[ "$1" == '--opt3' ]]; then
    playerctl next
  elif [[ "$1" == '--opt4' ]]; then
    playerctl stop
  fi
}

# Acciones de Rofi
chosen="$(run_rofi)"
case ${chosen} in
$option_1) run_cmd --opt1 ;;
$option_2) run_cmd --opt2 ;;
$option_3) run_cmd --opt3 ;;
$option_4) run_cmd --opt4 ;;
esac
