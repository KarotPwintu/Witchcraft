{ self, inputs, pkgs, settings, ... }:

{
  flake.nixosConfigurations = let
    inherit (inputs.nixpkgs.lib) nixosSystem;
    specialArgs = {inherit inputs self;};
  in {
    witchcraft = nixosSystem {
      inherit specialArgs;
      modules = [
        ./configuration.nix
        inputs.nur.modules.nixos.default
        inputs.nur.legacyPackages."x86_64-linux".repos.iopq.modules.xraya
        self.nixosModules.blackmagic
        self.nixosModules.Terminal
        self.nixosModules.Catppuccin
        inputs.chaotic.nixosModules.nyx-cache
        inputs.chaotic.nixosModules.nyx-overlay
        inputs.chaotic.nixosModules.nyx-registry
        inputs.lix-module.nixosModules.default
        inputs.home.nixosModules.home-manager
        {
          home-manager = {
            extraSpecialArgs = specialArgs;
            useGlobalPkgs = true;
            useUserPackages = true;
            backupFileExtension = "hm_backup";
            users.{$settings.username} = {
              imports = [
                inputs.chaotic.homeManagerModules.default
                ./home.nix
              ];
            };
          };
        }
      ];
    };
  };
}