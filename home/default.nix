#home
{ config, pkgs, username, ... }:

{
  #imports = [
  #  ./shell
  #];

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
  home.stateVersion = "24.11";
}
