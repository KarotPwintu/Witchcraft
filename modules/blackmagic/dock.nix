{ pkgs, ... }:

{
  home.packages = with pkgs; [ 
    nwg-dock-hyprland
    nwg-drawer
  ];
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "nwg-dock-hyprland -x"
    ];
  };
}