{ inputs, ... }:

{
  flake.nixosModules.Catppuccin = { config, ... }:
  {
    imports = [
      inputs.home.nixosModules.home-manager
      inputs.catppuccin.nixosModules.catppuccin
    ];
    options = {};
    config = {
      catppuccin = {
        enable = true;
        flavor = "mocha";
      };
      home-manager.users.ema = {
        imports = [ inputs.catppuccin.homeModules.catppuccin ];
        catppuccin = {
          enable = true;
          flavor = "mocha";
        };
      };
      
    };
  };
}