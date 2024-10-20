#dev
{ pkgs, ... }:

{
   # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
    epiphany
    gedit
    evince
    eog
    totem
    seahorse
    gtranslator
    baobab
    gnome-maps
    gnome-contacts
    gnome-calendar
    gnome-characters
    gnome-font-viewer
    gnome-weather
    gnome-music
    gnome-clocks
    gnome-logs
    gnome-connections
    geary
  ];

  programs.firefox.enable = true;

  programs.hyprland = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [

  #--Hyprland--#
    ags
    polkit_gnome
    swww
    kitty
    wofi
  
  #--Shell--#
    nitch
    neovim
    erdtree
    eza
    zoxide
    bat
    nnn
    hyfetch
    figlet
    starship
    
  #--GUI--#  
    vscodium
  ];
}
