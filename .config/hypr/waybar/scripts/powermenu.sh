#!/usr/bin/env bash

# Power menu options with arrows/icons
options="  Shutdown\n  Reboot\n󰒲  Sleep\n󰍃  Logout"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "" -theme ~/.config/hypr/waybar/config/powermenu.css)

case $chosen in
    "  Shutdown") systemctl poweroff ;;
    "  Reboot") systemctl reboot ;;
    "󰒲  Sleep") systemctl suspend ;;
    "󰍃  Logout") hyprctl dispatch exit ;;
esac
