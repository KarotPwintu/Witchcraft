#apps
{ pkgs, ... }:

{
  imports = [
    ./Files.nix
    ./Terminal.nix
  ];

  home.packages = with pkgs; [
    rofi
  ];
}