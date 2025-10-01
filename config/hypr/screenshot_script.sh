#!/bin/bash
# Take area screenshot using hyprshot + slurp

DIR="/home/bkr/Pictures/Screenshots"
mkdir -p "$DIR"   # make sure folder exists

FILE="$DIR/$(date +%Y-%m-%d_%H-%M-%S)_area.png"

# Capture area with slurp
if command -v hyprshot &> /dev/null && command -v slurp &> /dev/null; then
    hyprshot -m region -o "$DIR" -f "$(date +%Y-%m-%d_%H-%M-%S)_area.png"
    notify-send "Screenshot saved" "$FILE"
else
    notify-send "Error" "hyprshot or slurp not installed"
fi
