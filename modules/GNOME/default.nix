{ pkgs, ... }:

{
  services.xserver.desktopManager = {
    gnome.enable = true;
  };
  services.xserver.displayManager.gdm.enable = true;
  environment.gnome.excludePackages = with pkgs; [
    gnome-calculator
    gnome-maps
    gnome-contacts
    gnome-tour
    gnome-clocks
    gnome-weather
    gnome-console
    gnome-music
    gnome-logs
    gnome-text-editor
    gnome-software
    gnome-font-viewer
    gnome-disk-utility
    gnome-system-monitor
    gnome-connections
    gnome-characters
    gnome-calendar
    loupe
    simple-scan
    evince
    file-roller
    baobab
    seahorse
    snapshot
    totem
    yelp
    epiphany
    geary
  ];
  environment.systemPackages = with pkgs; [
    gnomeExtensions.kando-integration
    gnomeExtensions.wiggle
    gnomeExtensions.gtk4-desktop-icons-ng-ding
    gnomeExtensions.logo-menu
    gnomeExtensions.spotify-tray
    gnomeExtensions.dash-to-dock
    gnomeExtensions.blur-my-shell
    gnomeExtensions.weather-oclock
    gnome-tweaks
    dracula-theme
  ];
}