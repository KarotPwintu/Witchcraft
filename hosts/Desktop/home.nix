{ lib, ... }:

{
  programs.home-manager.enable = true;
  home = {
    username = "ema";
    homeDirectory = lib.mkForce "/home/ema";
    stateVersion = "25.11";
  };
}