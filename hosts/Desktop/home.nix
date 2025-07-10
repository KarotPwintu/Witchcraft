{ ... }:

{
  programs.home-manager.enable = true;
  home = {
    username = "ema";
    homeDirectory = "/home/ema";
    stateVersion = "25.11";
  };
}