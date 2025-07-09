{ inputs, pkgs, ... }:

{
  imports = [
    ./apps/EDITOR
    ./apps/FILE_MANAGER
    ./config
    ./nix
    ./pkgs
  ];
}