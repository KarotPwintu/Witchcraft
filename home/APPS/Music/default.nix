{ pkgs, ... }:

{
  imports = [
  #  ./Nicotine.nix
  ];
  home.packages = with pkgs; [
    lollypop
  ];
}