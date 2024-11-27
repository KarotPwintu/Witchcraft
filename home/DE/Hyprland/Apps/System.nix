#system
{ pkgs, inputs, ... }:

{
    home.packages = with pkgs [
      inputs.nix-software-center.packages.${system}.nix-software-center
      inputs.nixos-conf-editor.packages.${system}.nixos-conf-editor
    ],
}