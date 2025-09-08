#!/bin/bash

# Simple dmenu/wofi power menu
CHOICE=$(echo -e "Shutdown\nReboot\nLogout\nSuspend" | wofi --dmenu --prompt "Power")

case "$CHOICE" in
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Logout)
        hyprctl dispatch exit
        ;;
    Suspend)
        systemctl suspend
        ;;
esac

