#lock
{ pkgs, ... }:

{
  programs.hyprlock = {
    enable = true;
  };
}