/* ██░ ██  ▒█████   ███▄ ▄███▓▓█████ 
  ▓██░ ██▒▒██▒  ██▒▓██▒▀█▀ ██▒▓█   ▀ 
  ▒██▀▀██░▒██░  ██▒▓██    ▓██░▒███   
  ░▓█ ░██ ▒██   ██░▒██    ▒██ ▒▓█  ▄ 
  ░▓█▒░██▓░ ████▓▒░▒██▒   ░██▒░▒████▒
   ▒ ░░▒░▒░ ▒░▒░▒░ ░ ▒░   ░  ░░░ ▒░ ░
   ▒ ░▒░ ░  ░ ▒ ▒░ ░  ░      ░ ░ ░  ░
   ░  ░░ ░░ ░ ░ ▒  ░      ░      ░   
   ░  ░  ░    ░ ░         ░      ░  ░
                                     */
{ inputs, pkgs, ... }:

{
  imports = [
    ./APPS
    ./ENV/Hyprland
    ./SHELL
    ./THEME
    #inputs.nvf.homeManagerModules.default
    #inputs.ags.homeManagerModules.default
  ];
  home = {
    username = "ema";
    homeDirectory = "/home/ema";
  };
  programs.home-manager.enable = true;
  home.stateVersion = "25.05";
}
