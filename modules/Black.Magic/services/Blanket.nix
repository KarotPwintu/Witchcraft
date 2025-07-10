{ pkgs, ... }:

{
  services.blanket = {
    enable = true;
    package = pkgs.blanket;
  };
}