{ ... }:

{
  flake.nixosModules.gaming = { config, ... }:
  {
    imports = [
      ./gamemode.nix
      ./gamescope.nix
      ./steam.nix
    ];
  };
}