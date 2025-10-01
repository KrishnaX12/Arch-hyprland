## Arch-hyprland
- Hyprland minimal setup with **waybar, hyprlock, hyprland** and some extra features
![Arch Linux](https://img.shields.io/badge/OS-ArchLinux-blue?logo=arch-linux)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-purple)
![License](https://img.shields.io/badge/License-MIT-green)
------------------------------------------------------------------------------------------------
## Features
- Waybar with transparent background (Catppuccin-like theme)
- Hyprland WM with cyberpunk city theme and clean config
- Hyprlock with blue blur + neon login
- Hypridle (auto lock, suspend, battery warning)
- Custom working Power Menu, Bluetooth, WiFi in Waybar
- Screenshot script with hyprshot + slurp
- Animated wallpaper with mpvpaper
- Rofi for smart application search
------------------------------------------------------------------------------------------------
## 📂 Folder Structure
```bash
Arch-Hyprland/
├── README.md
├── .config/
│   └── hypr/
│       ├── hyprland.conf          # Main Hyprland config
│       ├── hypridle.conf          # Idle settings
│       ├── hyprlock.conf          # Lock screen config
│       ├── binds.conf             # Keybindings
│       ├── screenshot/            
│       │   └── screenshot_script.sh # Screenshot helper
│       ├── applicationSearch/
│       │   └── spotlight.rasi      # Smart app search config
│       ├── filesearch/
│       │   ├── filesearch.sh       # File search script
│       │   └── style.css           # File search theme
│       ├── keyBindings/
│       │   ├── keyBindings.conf    # Keybindings cheat sheet
│       │   └── show_keybinds.sh    # Script to display keybindings
│       └── waybar/
│           ├── config/
│           │   ├── config.jsonc    # Waybar layout
│           │   ├── style.css       # Waybar theme
│           │   ├── powermenu.css   # Power menu styling
│           │   └── powermenu.rasi  # Power menu UI
│           └── scripts/
│               ├── bluetooth.sh    # Bluetooth indicator
│               └── powermenu.sh    # Power menu actions
└── Pictures/
    └── Wallpaper/
        └── pixelCity.gif           # Example wallpaper
```
------------------------------------------------------------------------------------------------
## 📂 File Locations
----------------------------------------------------------------------------
| File                 | Path                                              |
| -------------------- | ------------------------------------------------- |
| Main Hyprland Config | `~/.config/hypr/hyprland.conf`                    |
| Keybindings          | `~/.config/hypr/binds.conf`                       |
| Lock Screen          | `~/.config/hypr/hyprlock.conf`                    |
| Screenshot Script    | `~/.config/hypr/screenshot/screenshot_script.sh`  |
| Application Search   | `~/.config/hypr/applicationSearch/spotlight.rasi` |
| File Search Script   | `~/.config/hypr/filesearch/filesearch.sh`         |
| File Search Style    | `~/.config/hypr/filesearch/style.css`             |
| Waybar Config        | `~/.config/hypr/waybar/config/config.jsonc`       |
| Waybar Styles        | `~/.config/hypr/waybar/config/style.css`          |
| Power Menu Theme     | `~/.config/hypr/waybar/config/powermenu.css`      |
| Power Menu Rasi      | `~/.config/hypr/waybar/config/powermenu.rasi`     |
| Waybar Scripts       | `~/.config/hypr/waybar/scripts/`                  |
| Wallpapers           | `~/Pictures/Wallpaper/`                           |
----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
## 📦 Dependencies
### Core (required)
- hyprland
- waybar
- hyprlock
- rofi
- konsole / alacritty (terminal)
- brightnessctl, pamixer (for Waybar control)
- wl-clipboard (clipboard support)

### Optional (used in this setup)
- dolphin (KDE file manager)
- kdeconnect (phone integration)
- spectacle (KDE screenshot tool)
- plasma-systemmonitor (resource monitor)
--------------------------------------------------------------------------------------------------
## 🚀 Installation GUIDE !!

### Core install (Arch Linux)
```bash
sudo pacman -S hyprland waybar rofi hyprlock hypridle konsole brightnessctl pamixer wl-clipboard
```
### Optional KDE apps (if you want the same setup as mine)
```bash
sudo pacman -S dolphin kdeconnect spectacle plasma-systemmonitor
```
### Clone the repo
```bash
git clone https://github.com/KrishnaX12/Arch-hyprland.git
cd Arch-hyprland
```
### Copy config files
```bash
cp -r .config/hypr ~/.config/
mkdir -p ~/Pictures/Wallpaper
cp -r Pictures/Wallpaper/* ~/Pictures/Wallpaper/
```
### Reload if already in hyprland
```bash
hyprctl reload
```
### Start hyprland if not in 
```bash
exec Hyprland 
```
-------------------------------------------------------------------------------------------------
