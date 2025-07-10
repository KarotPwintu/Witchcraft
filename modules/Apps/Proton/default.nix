{ inputs, pkgs, ... }:

{
  flake.nixosModules.Proton = { config,pkgs,  ... }:
  {
    imports = [
      inputs.home.nixosModules.home-manager
    ];
    config = {
      home-manager = {
        users.ema = {
          programs.firefox.profiles.Ema = {
            extensions = {
              packages = with pkgs.nur.repos.rycee.firefox-addons; [
                proton-pass
                proton-vpn
              ];
            };
          };
        };
      };
    };
  };
}