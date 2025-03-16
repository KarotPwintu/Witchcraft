{ pkgs, ... }:

{
  evironment.systemPackages = with pkgs; [
    spotify
    stremio
  ];
}