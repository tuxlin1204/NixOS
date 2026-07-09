{
  username = "admin"; # auto-set with install.sh, live-install.sh, and rebuild scripts.

  # Desktop Environment
  desktop = "hyprland"; # hyprland, i3, gnome, plasma6

  # Theme & Appearance
  bar = "waybar"; # waybar, wayle, hyprpanel, noctalia-shell, caelestia-shell
  waybarTheme = "minimal"; # stylish, minimal
  sddmTheme = "astronaut"; # astronaut, black_hole, purple_leaves, jake_the_dog, hyprland_kath
  defaultWallpaper = "galaxy.webp"; # Change with SUPER + SHIFT + W (Hyprland)
  hyprlockWallpaper = "galaxy.webp";

  # Default Applications
  terminal = "alacritty"; # kitty, alacritty, wezterm
  editor = "nixvim"; # nixvim, vscode, helix, doom-emacs, nvchad, neovim
  browser = "firefox"; # zen-beta, firefox, floorp
  fileManager = "yazi"; # yazi, lf, thunar
  shell = "zsh"; # zsh, bash
  games = true; # Enable/Disable gaming module

  # Hardware
  hostname = "admin";
  videoDriver = "nvidia"; # nvidia, amdgpu, intel
  nvidiaChannel = "legacy_580"; # stable, latest, beta, legacy_xxx
  bluetoothSupport = false; # Whether your motherboard supports bluetooth
  batterySupport = false; # Whether device has a battery (laptop)

  # Localization
  timezone = "Europe/Moscow";
  locale = "en_EN.UTF-8";
  clock24h = true;
  kbdLayout = "en,ru";
  kbdVariant = "extd";
  consoleKeymap = "uk";
  capslockAsESC = false;
}
