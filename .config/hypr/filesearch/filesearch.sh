#!/bin/bash
# File search with custom CSS

FILE=$(fd --type f . $HOME 2>/dev/null | wofi --show dmenu --prompt "Search file:" --style ~/.config/hypr/filesearch/style.css)

if [ -n "$FILE" ]; then
    xdg-open "$FILE"
fi
