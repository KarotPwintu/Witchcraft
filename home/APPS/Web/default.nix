{ pkgs, ... }:

{
  imports = [
    ./Google.nix
    ./Mail.nix
    ./Tor.nix
  ];
}