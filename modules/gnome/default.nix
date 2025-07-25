{ ... }:

{
  flake.nixosModules.gnome = { config, pkgs, ... }:
  {
    config = {
      services.displayManager.gdm.enable = true;
      services.desktopManager.gnome.enable = true;
      environment.systemPackages = with pkgs.gnomeExtensions; [
        blur-my-shell
        wifi-qrcode
        user-avatar-in-quick-settings
        kali-track
        tray-icons-reloaded
        proton-vpn-button
        proton-bridge-button
        kando-integration
        ollama-indicator
        user-themes
        user-themes-x
        obs-status
        dash-to-dock
        desktop-clock
        desktop-icons-ng-ding
        gamemode-shell-extension
        luna-moon-phase-indicator
      ];
      environment.gnome.excludePackages = with pkgs; [
        decibels
        geary
        epiphany
        baobab
        evince
        gnome-calculator
        gnome-calendar
        snapshot
        gnome-console
        gnome-contacts
        gnome-color-manager
        gnome-connections
        gnome-characters
        gnome-weather
        gnome-tour
        gnome-text-editor
        gnome-system-monitor
        gnome-music
        gnome-maps
        gnome-logs
        gnome-font-viewer
        gnome-disk-utility
        yelp
        rygel
        seahorse
        simple-scan
        gnome-clocks
        loupe
        totem
     ];
    };
  };
}