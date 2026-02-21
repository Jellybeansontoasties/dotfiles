### ╭────────────────────────────────────────────────────────────────────────────────────╮
### │               󰣇 dotfiles | Arch Linux + Hyprland | /ᐠづ｡◕‿‿◕｡マづ                  │
### ╰────────────────────────────────────────────────────────────────────────────────────╯

personal config files for arch linux with hyprland wm.
built on an hp victus | i7-13700HX | RTX 4060 | 15GB RAM

# /ᐠ˵- ⩊ -˵マ what's in here /ᐠ˵- ⩊ -˵マ -----------------------------------------------

# ┌────────────────────────────────────────────────────────────────────────────┐
# │ ───────────────────── WINDOW MANAGER & DESKTOP ────────────────────────── │
# └────────────────────────────────────────────────────────────────────────────┘

  hyprland    →  .config/hypr/          # tiling wm config
  eww         →  .config/eww/           # widget bar (eww.yuck + eww.scss + scripts)
  rofi        →  .config/rofi/          # app launcher

# ┌────────────────────────────────────────────────────────────────────────────┐
# │ ──────────────────────── TERMINAL & SHELL ─────────────────────────────── │
# └────────────────────────────────────────────────────────────────────────────┘

  kitty       →  .config/kitty/         # terminal emulator
  bash        →  .bashrc                # shell config

# ┌────────────────────────────────────────────────────────────────────────────┐
# │ ──────────────────────── THEMING & APPEARANCE ─────────────────────────── │
# └────────────────────────────────────────────────────────────────────────────┘

  cava        →  .config/cava/          # audio visualizer (config, shaders, themes)
  gtk-3.0     →  .config/gtk-3.0/       # gtk theme settings

# ┌────────────────────────────────────────────────────────────────────────────┐
# │ ──────────────────────── SYSTEM & MISC ────────────────────────────────── │
# └────────────────────────────────────────────────────────────────────────────┘

  git         →  .gitconfig             # git config
  mimeapps    →  .config/mimeapps.list  # default app associations
  xdg         →  .config/user-dirs.dirs # xdg user directory paths
  dolphin     →  .config/dolphinrc      # file manager settings
  pavucontrol →  .config/pavucontrol.ini # audio mixer settings

# ( ˶°ㅁ°) !! ᡕᠵデᡁ᠊╾━  *the palette* ---------------------------------------------------

  background  →  #1B0906   # deep dark red-brown
  primary     →  #FF8C00   # orange
  secondary   →  #3a401a   # dark moss green
  text        →  #e0e0e0   # bone white

# ദ്ദി（• ˕ •マ.ᐟ install ദ്ദി（• ˕ •マ.ᐟ --------------------------------------------------

  # ⚠️ back up your existing configs before symlinking

  git clone git@github.com:Jellybeansontoasties/dotfiles.git ~/dotfiles

  # dotfiles
  ln -sf ~/dotfiles/.bashrc ~/.bashrc
  ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

  # .config directories
  for dir in hypr kitty rofi eww cava gtk-3.0; do
    ln -sf ~/dotfiles/.config/$dir ~/.config/$dir
  done

  # .config files
  for f in mimeapps.list user-dirs.dirs user-dirs.locale dolphinrc pavucontrol.ini; do
    ln -sf ~/dotfiles/.config/$f ~/.config/$f
  done

# ʕ｡•ﻌ•｡ʔ notes ʕ｡•ﻌ•｡ʔ ---------------------------------------------------------------

  # symlinks will overwrite existing files at the target path
  # hyprland config assumes hp victus monitor layout — adjust monitors section
  # eww bar scripts may need chmod +x after symlinking
