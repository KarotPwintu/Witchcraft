{ pkgs, ... }:

{
  imports = [
    ./Polkit.nix
    ./Wallpaper.nix
  ];
}