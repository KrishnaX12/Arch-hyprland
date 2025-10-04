#!/bin/bash

# Kill any existing swaync instance
pkill swaync

# Run battery checker in background
~/.config/hypr/notification/battery_notify.sh &

# Start swaync with your custom config + style
exec swaync
