{ inputs, pkgs, ... }:

{
  programs.gamescope = {
    enable = true;
    package = pkgs.gamescope_git;
    env = {};
    args = [];
  };
}