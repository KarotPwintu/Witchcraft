{ inputs, pkgs, ... }:

{
  flake.nixosModules.Terminal = { config, ... }:
  {
    imports = [
      inputs.home.nixosModules.home-manager
    ];
    options = {};
    config = {
      programs = {
        zsh = {
          enable = true;
        };
      };
      home-manager = {
        users.ema = {
          imports = [
            ./apps/EDITOR
            ./apps/FILE_MANAGER
            ./config
            ./nix
            ./pkgs
          ];
          programs.ghostty = {
            enable = true;
            enableZshIntegration = true;
            settings = {
              font-family = "Maple Mono NF";
            };
          };
        };
      };
    };
  };
}