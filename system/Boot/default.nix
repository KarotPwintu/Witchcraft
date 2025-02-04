{ pkgs, ... }:

{
  imports = [
    ./Bootloader.nix
  ];
  boot.plymouth = {
      enable = true;
  };
}