{ inputs, pkgs, ... }:

{
  flake.nixosModules.Spotify = { config, pkgs, ... }: let 
    spicePkgs = inputs.spotify.legacyPackages.${pkgs.stdenv.system};
  in 
  {
    imports = [
      inputs.home.nixosModules.home-manager
    ];
    options = {};
    config = {
      home-manager.users.ema = {
        imports = [
          inputs.spotify.homeManagerModules.spicetify
        ];
        programs.spicetify = {
          enable = true;
          theme = spicePkgs.themes.catppuccin;
          colorScheme = "mocha";
        };
      };
    };
  };
}