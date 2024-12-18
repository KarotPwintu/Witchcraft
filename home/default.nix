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
{ config, pkgs, inputs, username, ... }:

{
  imports = [
    #./connection
    inputs.catppuccin.homeManagerModules.catppuccin
    ./ENVIRONMENT/Hyprland
    ./SHELL
    ./THEME
    ./WEB
  ];

  home = { 
    username = "${username}";
    homeDirectory = "/home/${username}";
    #sessionPath = [
    #  "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
    #];
  };

  #home.sessionVariables = {
  #  EDITOR = "neovim";
  #};

  catppuccin = {
    enable = true;
    accent = "lavender";
    flavor = "mocha";
  };


  #programs.home-manager.enable = true;
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];
  };
  home.stateVersion = "25.05";
}
