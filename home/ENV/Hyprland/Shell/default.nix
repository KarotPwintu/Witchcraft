{ pkgs, inputs, ... }:

{
  imports = [
    ./Fuzzel.nix
    #./Hyprpanel.nix
    ./Polkit.nix
    ./Portal.nix
    ./Wallpaper.nix
  ];
  home.packages = with pkgs; [
    nwg-dock-hyprland
    waypaper
  ];
  wayland.windowManager.hyprland.settings = {
    exec-once = [ 
      "dbus-update-activation-environment --all --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
      "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
      "systemctl --user start hyprpolkitagent"
      "nwg-dock-hyprland -x &"
      "swww init"
    ];
  };
}