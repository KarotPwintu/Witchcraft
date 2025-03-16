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
    username = "emile";
    homeDirectory = "/home/emile";
  };
  programs.home-manager.enable = true;
  home.stateVersion = "25.05";
}
