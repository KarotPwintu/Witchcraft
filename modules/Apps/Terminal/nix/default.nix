{ ... }:

{
  imports = [
    ./Index.nix
    ./Init.nix
    ./Shell.nix
  ];
  programs.nh = {
    enable = true;
    flake = "/etc/nixos";
  };
}