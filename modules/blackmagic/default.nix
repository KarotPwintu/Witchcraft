{ inputs, ... }:

{
  flake.nixosModules.blackMagic = { config, ... }:
  {
    imports = [
      inputs.home-manager.nixosModules.home-manager
    ];
    options.witchcraft.blackMagic = {};
    config = {
      home-manager.users.ema = {
        imports = [];
      };
    };
  };
}