# macOS Dotfiles

This repository contains my personal macOS configuration for tiling window management, status bars, and audio visualization.

## 🛠 Features
- **Window Management**: `yabai` (tiling) & `skhd` (shortcuts)
- **Status Bar**: `sketchybar` (Catppuccin Macchiato theme)
- **Borders**: `borders` (JankyBorders)
- **Visualization**: `cava` (terminal) & SketchyBar integrated visualizer
- **Theme**: Catppuccin Macchiato

## 🚀 Installation

### 1. Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Install Dependencies
```bash
brew tap FelixKratz/formulae
brew install yabai skhd sketchybar borders cava blueutil jq blackhole-2ch
```

### 3. Setup SIP (Required for yabai scripting)
1. Boot into Recovery Mode.
2. Run `csrutil disable --with kext --with dtrace --with nvram --with basesystem`.
3. Reboot.
4. Run `sudo nvram boot-args="-arm64e_preview_abi"`.
5. Reboot again.

### 4. Apply Dotfiles
Clone this repo and symlink the files:
```bash
git clone https://github.com/Z3roPath/Mac-Dotfiles.git ~/Mac-Dotfiles
cd ~/Mac-Dotfiles

# Symlink configs
ln -sf ~/Mac-Dotfiles/yabairc ~/.yabairc
ln -sf ~/Mac-Dotfiles/skhdrc ~/.skhdrc
ln -sf ~/Mac-Dotfiles/zshrc ~/.zshrc
ln -sf ~/Mac-Dotfiles/zprofile ~/.zprofile
mkdir -p ~/.config
ln -sf ~/Mac-Dotfiles/.config/sketchybar ~/.config/
ln -sf ~/Mac-Dotfiles/.config/borders ~/.config/
ln -sf ~/Mac-Dotfiles/.config/cava ~/.config/
```

### 5. Start Services
```bash
brew services start yabai
brew services start skhd
brew services start sketchybar
brew services start borders
```

## ⌨️ Shortcuts (Highlights)
- `Cmd + Return`: Open Terminal (Ghostty)
- `Cmd + B`: Open Chrome (New Window)
- `Cmd + F`: Open Finder
- `Cmd + Shift + F`: Toggle Fullscreen
- `Cmd + /`: Toggle Window Transparency
- `Cmd + P/T`: Toggle Floating & Center
- `Cmd + Q`: Full Quit App
- `Cmd + W`: Close Focused Window
