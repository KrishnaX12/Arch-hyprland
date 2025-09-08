## Arch-hyprland
- Hyprland minimal setup with **waybar, hyprlock, hypridle, hyprland** and some extra features
------------------------------------------------------------------------------------------------
## Features
- Waybar with transparent background like a Catppuccin-like theme 
- Hyprland WM with cyberpunk city theme with clean config
- Hyprlock with blue blur + neon login
- Hypridle (**auto lock, suspend, battery warning**)
- custom working **power menu, bluetooth, wifi** in waybar
- Screenshot script with **hyprshot + slurp**
- animated wallpaper with **mpvpaper**
- rofi for smart application search 
------------------------------------------------------------------------------------------------
## 📂 Folder Structure
```bash
Arch-Hyprland/
├── README.md
├── .config/
│   └── hypr/
│       ├── hyprland.conf        # Main Hyprland config
│       ├── hypridle.conf        # Idle settings
│       ├── hyprlock.conf        # Lock screen config
│       ├── binds.conf           # Keybindings
│       ├── screenshot_script.sh # Screenshot helper
│       └── waybar/
│           ├── config/
│           │   ├── config.jsonc   # Waybar layout
│           │   ├── style.css      # Waybar theme
│           │   ├── powermenu.css  # Power menu styling
│           │   └── powermenu.rasi # Power menu UI
│           └── scripts/
│               ├── bluetooth.sh   # Bluetooth toggle
│               └── powermenu.sh   # Power menu actions
└── Pictures/
    └── Wallpaper/
        └── pixelCity.gif          # Example wallpaper
```
------------------------------------------------------------------------------------------------
## 📂 File Locations
---------------------------------------------------------------------
| File               | Path                                         |
|--------------------|----------------------------------------------|
| Main Hyprland Config | `~/.config/hypr/hyprland.conf`             |
| Keybindings        | `~/.config/hypr/binds.conf`                  |
| Idle Config        | `~/.config/hypr/hypridle.conf`               |
| Lock Screen        | `~/.config/hypr/hyprlock.conf`               |
| Screenshot Script  | `~/.config/hypr/screenshot_script.sh`        |
| Waybar Config      | `~/.config/hypr/waybar/config/config.jsonc`  |
| Waybar Styles      | `~/.config/hypr/waybar/config/style.css`     |
| Power Menu Theme   | `~/.config/hypr/waybar/config/powermenu.css` |
| Power Menu Rasi    | `~/.config/hypr/waybar/config/powermenu.rasi`|
| Waybar Scripts     | `~/.config/hypr/waybar/scripts/`             |
| Wallpapers         | `~/Pictures/Wallpaper/`                      |
---------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
## 📦 Dependencies
### Core (required)
- hyprland
- waybar
- hyprlock
- hypridle
- rofi
- alacritty (or your preferred terminal, i used zsh with konsole)
- brightnessctl, pamixer (if you use them in Waybar)
- wl-clipboard (for copy-paste support)

### Optional (used in this setup)
- dolphin (KDE file manager)
- kdeconnect (phone integration)
- spectacle (KDE screenshot tool)
- plasma-systemmonitor (resource monitor)
--------------------------------------------------------------------------------------------------
## 🚀 Installation GUIDE !!

### Core install (Arch Linux)
```bash
sudo pacman -S hyprland waybar rofi hyprlock hypridle alacritty brightnessctl pamixer wl-clipboard
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
cp -r .config/waybar ~/.config/
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
## ❓ Troubleshooting 
- **Waybar not showing icons** → Install a Nerd Font (e.g., JetBrainsMono Nerd Font) and set it in `style.css`.  
- **Hyprlock blur not working** → Make sure you’re using a GPU that supports it and that `hyprlock` is up to date.  
- **mpvpaper not starting** → Verify `mpvpaper` is installed and add it to `exec-once` in `hyprland.conf`.  
