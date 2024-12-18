#apps
{ pkgs, ... }:

{
  imports = [
    ./Bottles.nix
    ./Code.nix
    ./Downloads.nix
    ./Files.nix
    ./Terminal.nix
  ];

  home.packages = with pkgs; [
    rofi
  ];
}