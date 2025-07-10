{ pkgs, ... }:

{
  imports = [
    ./Waybar.nix
  ];
  services.avizo = {
    enable = true;
  };
  services.swaync = {
    enable = true;
    settings = {};
  };
  programs.gh = {
    enable = true;
  };
  programs.git = {
    enable = true;
    userName = "KarotPwintu";
    userEmail = "karotpwintu@proton.me";
  };
  home.packages = with pkgs; [
    xdg-user-dirs-gtk
    gnome-music
    lollypop
    decibels
    nicotine-plus
    nautilus
    nautilus-python
    nautilus-open-any-terminal
    nwg-dock-hyprland
    gnome-disk-utility
    nwg-drawer
  ];
  programs.hyprpanel = {
    enable = false;
    systemd.enable = true;
    dontAssertNotificationDaemons = true;
    settings = {};
  };
  services.blueman-applet.enable = true;
  services.easyeffects.enable = true;
  wayland.windowManager.hyprland.settings = {
    exec-once = [ "nwg-dock-hyprland -x" ];
  };
}