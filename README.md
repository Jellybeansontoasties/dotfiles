# dotfiles — Arch Linux + Hyprland

Personal config files for Arch Linux with Hyprland WM.

## Included Configs

### Window Manager & Desktop
- **Hyprland** — `.config/hypr/` — Window manager configuration
- **Eww** — `.config/eww/` — Widget bar (eww.yuck + eww.scss + scripts)
- **Rofi** — `.config/rofi/` — Application launcher

### Terminal & Shell
- **Kitty** — `.config/kitty/` — Terminal emulator
- **Bash** — `.bashrc` — Shell configuration

### Theming & Appearance
- **Cava** — `.config/cava/` — Audio visualizer (config, shaders, themes)
- **GTK 3** — `.config/gtk-3.0/` — GTK theme settings

### System & Misc
- **Git** — `.gitconfig` — Git configuration
- **Mime apps** — `.config/mimeapps.list` — Default application associations
- **XDG dirs** — `.config/user-dirs.dirs` — XDG user directory paths
- **Dolphin** — `.config/dolphinrc` — File manager settings
- **PavuControl** — `.config/pavucontrol.ini` — Audio mixer settings

## Install

Clone and symlink configs to your home directory:

```bash
git clone git@github.com:Jellybeansontoasties/dotfiles.git ~/dotfiles

# Symlink individual dotfiles
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# Symlink entire .config directories
for dir in hypr kitty rofi eww cava gtk-3.0; do
  ln -sf ~/dotfiles/.config/$dir ~/.config/$dir
done

# Symlink individual .config files
for f in mimeapps.list user-dirs.dirs user-dirs.locale dolphinrc pavucontrol.ini trashrc; do
  ln -sf ~/dotfiles/.config/$f ~/.config/$f
done
```

> **Note:** Back up your existing configs before creating symlinks.
> Symlinks will overwrite existing files/directories at the target path.
