{ inputs, ... }:

{
  flake.nixosModules.Apps = { config, ... }:
  {
    imports = [ inputs.home.nixosModules.home-manager ];
    options = {};
    config = {
      home-manager = {
        users.ema = {
          imports = [
            ./OBS
            ./Obsidian
            ./Office
          ];
        };
      };
    };
  };
}