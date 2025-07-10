{ inputs, ... }:

{
  flake.nixosModules.Code = { config, ... }:
  {
    imports = [
      inputs.home.nixosModules.home-manager
    ];
    options = {};
    config = {
      home-manager.users.ema = {
        imports = [
          ./VSCodium.nix
        ];
      };
    };
  };
}