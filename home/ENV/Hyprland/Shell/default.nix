{ pkgs, ... }:

{
  imports = [
    #./Polkit.nix
    ./Portal.nix
    ./Rofi.nix
    #./Wallpaper.nix
    ./Waybar.nix
  ];
}