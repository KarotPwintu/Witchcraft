{ pkgs, ... }:

{
  imports = [
    ./Stremio.nix
    ./VLC.nix
  ];
  home.packages = with pkgs [];
}