# ██░ ██  ▒█████   ███▄ ▄███▓▓█████ #
#▓██░ ██▒▒██▒  ██▒▓██▒▀█▀ ██▒▓█   ▀ #
#▒██▀▀██░▒██░  ██▒▓██    ▓██░▒███   #
#░▓█ ░██ ▒██   ██░▒██    ▒██ ▒▓█  ▄ #
#░▓█▒░██▓░ ████▓▒░▒██▒   ░██▒░▒████▒#
# ▒ ░░▒░▒░ ▒░▒░▒░ ░ ▒░   ░  ░░░ ▒░ ░#
# ▒ ░▒░ ░  ░ ▒ ▒░ ░  ░      ░ ░ ░  ░#
# ░  ░░ ░░ ░ ░ ▒  ░      ░      ░   #
# ░  ░  ░    ░ ░         ░      ░  ░#
#                                   #
{ config, pkgs, username, ... }:

{
  imports = [
    ./env/Hyprland
    ./shell
    ./web
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

  #programs.home-manager.enable = true;
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];
  };
  home.stateVersion = "24.11";
}
