{ inputs, ... }:

{
  flake.nixosModules.gaming = { lib, config, ... }:
  let
    cfg = config.witchcraft.gaming;
  in
  {
    imports = [];

    options.witchcraft.gaming = {
      enable = lib.mkEnableOption "Gaming";
    };

    config = lib.mkIf cfg.enable {
      imports = [
        ./Gamemode.nix
        ./Gamescope.nix
        ./MangoHUD.nix
        ./Steam.nix
      ];
    };
  };
}