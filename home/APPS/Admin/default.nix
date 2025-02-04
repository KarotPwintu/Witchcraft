{ pkgs, ... }:

{
  imports = [
    ./Code.nix
    ./Settings.nix
    ./Terminal.nix
  ];
}