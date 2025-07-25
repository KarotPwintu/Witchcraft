{ ... }:

{
  flake.nixosModules.temp = { config, ... }:
  {
    config = {
      imports = [
        ./configuration.nix
      ];
    };
  };
}