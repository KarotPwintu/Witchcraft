#idle
{ pkgs, ... }:

{
  services.hypridle = {
    enable = true;
  };
}