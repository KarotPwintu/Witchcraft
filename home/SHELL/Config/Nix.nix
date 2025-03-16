{ pkgs, ... }:

{
  programs.nh = {
    enable = true;
    #package = ;
    flake = "/etc/nixos";
    clean = {
      enable = true;
      dates = "monthly";
      #extraArgs = ;
    };
  };
}