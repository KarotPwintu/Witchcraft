/*  ██████▓██   ██▓  ██████ ▄▄▄█████▓▓█████  ███▄ ▄███▓
  ▒██    ▒ ▒██  ██▒▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██▒▀█▀ ██▒
  ░ ▓██▄    ▒██ ██░░ ▓██▄   ▒ ▓██░ ▒░▒███   ▓██    ▓██░
    ▒   ██▒ ░ ▐██▓░  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██    ▒██ 
  ▒██████▒▒ ░ ██▒▓░▒██████▒▒  ▒██▒ ░ ░▒████▒▒██▒   ░██▒
  ▒ ▒▓▒ ▒ ░  ██▒▒▒ ▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░ ▒░   ░  ░
  ░ ░▒  ░ ░▓██ ░▒░ ░ ░▒  ░ ░    ░     ░ ░  ░░  ░      ░
  ░  ░  ░  ▒ ▒ ░░  ░  ░  ░    ░         ░   ░      ░   
        ░  ░ ░           ░              ░  ░       ░   
           ░ ░                                         */
{ self, pkgs, lib, inputs, ...}:

{
  imports = [
    ./Audio
    ./Boot
    ./Display
    #./greeter
    ./Kernel
    ./Network
    #./update
    #./vpn
  ];
  #DEV
  services.xserver.enable = true; 
  #services.xserver.displayManager.lightdm.enable = true;
  #services.xserver.desktopManager.cinnamon.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  environment.gnome.excludePackages = with pkgs; [
    orca
    evince
    # file-roller
    geary
    gnome-disk-utility
    # seahorse
    # sushi
    # sysprof
    #
    # gnome-shell-extensions
    #
    # adwaita-icon-theme
    # nixos-background-info
    gnome-backgrounds
    # gnome-bluetooth
    # gnome-color-manager
    # gnome-control-center
    # gnome-shell-extensions
    gnome-tour # GNOME Shell detects the .desktop file on first log-in.
    gnome-user-docs
    # glib # for gsettings program
    # gnome-menus
    # gtk3.out # for gtk-launch program
    # xdg-user-dirs # Update user dirs as described in https://freedesktop.org/wiki/Software/xdg-user-dirs/
    # xdg-user-dirs-gtk # Used to create the default bookmarks
    #
    baobab
    epiphany
    gnome-text-editor
    gnome-calculator
    gnome-calendar
    gnome-characters
    # gnome-clocks
    #gnome-console
    gnome-contacts
    gnome-font-viewer
    gnome-logs
    gnome-maps
    gnome-music
    # gnome-system-monitor
    gnome-weather
    # loupe
    # nautilus
    gnome-connections
    simple-scan
    snapshot
    totem
    yelp
    gnome-software
  ];
  environment.systemPackages = with pkgs.gnomeExtensions; [
    blur-my-shell
    gtile
    focus
    wiggle
    spotify-tray
    dash-to-dock
    color-picker
    fly-pie
    logo-widget
    desktop-lyric
    logo-menu
    add-to-desktop
    github-actions
    gtk4-desktop-icons-ng-ding
    edit-desktop-files
    pkgs.gnome-tweaks
  ];

  catppuccin = {
    enable = true;
    accent = "lavender";
    flavor = "mocha";
  };

  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
  };
  documentation = {
    enable = false;
    nixos = {
      enable = false;
    };
  };
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  services.gvfs.enable = true;

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fr_FR.UTF-8";
    LC_IDENTIFICATION = "fr_FR.UTF-8";
    LC_MEASUREMENT = "fr_FR.UTF-8";
    LC_MONETARY = "fr_FR.UTF-8";
    LC_NAME = "fr_FR.UTF-8";
    LC_NUMERIC = "fr_FR.UTF-8";
    LC_PAPER = "fr_FR.UTF-8";
    LC_TELEPHONE = "fr_FR.UTF-8";
    LC_TIME = "fr_FR.UTF-8";
  };
  
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
}
