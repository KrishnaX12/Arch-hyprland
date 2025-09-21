#!/bin/bash
konsole --new-tab -e bash -c "
  glow ~/.config/hypr/keybinds.md;
  echo -e '\n\033[1;32mPress ENTER to close...\033[0m';
  read
"
