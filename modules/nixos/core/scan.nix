{ pkgs, ... }:

{
  hardware.sane = {
    enable = true;
    openFirewall = false;
    backends-package = with pkgs; [
      sane-backends
    ];
    extraBackends = with pkgs; [];
  };
}