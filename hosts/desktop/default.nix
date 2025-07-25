{ self, inputs, pkgs,  ... }:
let
  settings = import (../../settings.nix) {inherit pkgs inputs;};
  inherit (inputs.nixpkgs.lib) nixosSystem;
  specialArgs = {inherit inputs settings self;};
in
{
  flake.nixosConfigurations = {
    witchcraft = nixosSystem {
      inherit specialArgs;
      modules = [
        ./hardware-configuration.nix
        self.nixosModules.apps
        self.nixosModules.system
        self.nixosModules.gaming
        self.nixosModules.gnome
        inputs.catppuccin.nixosModules.catppuccin
        inputs.chaotic.nixosModules.default
        inputs.nur.modules.nixos.default
        inputs.nur.legacyPackages."x86_64-linux".repos.iopq.modules.xraya
        #inputs.lix-module.nixosModules.default
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager = {
            extraSpecialArgs = specialArgs;
            useGlobalPkgs = true;
            useUserPackages = true;
            backupFileExtension = "hm_backup";
            users.${settings.Username} = {
              imports = [
                inputs.catppuccin.homeModules.catppuccin
                ./home.nix
                ../../modules/code
                ../../modules/shell
                ../../modules/doom
                ../../modules/blackmagic/style/gtk.nix
                ../../modules/blackmagic/style/qt.nix
                ../../modules/blackmagic/dock.nix
                ../../modules/blackmagic/ags.nix
                ../../modules/blackmagic/avizo.nix
                ../../modules/blackmagic/clipse.nix
                ../../modules/blackmagic/hyprland.nix
                ../../modules/blackmagic/services/hypridle.nix
                ../../modules/blackmagic/pkgs/hyprlock.nix
                ../../modules/blackmagic/hyprpolkit.nix
                ../../modules/blackmagic/swaync.nix
                ../../modules/blackmagic/mpd.nix
                ../../modules/blackmagic/style/mutagen.nix
                ../../modules/blackmagic/playerctld.nix
                ../../modules/blackmagic/swww.nix
                ../../modules/blackmagic/wofi.nix
                ../../modules/blackmagic/waybar.nix
                ../../modules/blackmagic/config/var.nix
                ../../modules/apps/firefox.nix
                ../../modules/apps/ghostty.nix
                ../../modules/apps/obs.nix 
                ../../modules/apps/lutris.nix
                ../../modules/apps/vesktop.nix
                ../../modules/apps/obsidian.nix
                ../../modules/apps/spotify.nix
                ../../modules/apps/thunderbird.nix
              ];
            };
          };
        }
      ];
    };
  };
}