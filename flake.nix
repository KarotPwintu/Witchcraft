/* █     █░ ██▓▄▄▄█████▓ ▄████▄   ██░ ██  ▄████▄   ██▀███    █████    █████▒▄▄▄█████▓
  ▓█░ █ ░█░▓██▒▓  ██▒ ▓▒▒██▀ ▀█  ▓██░ ██▒▒██▀ ▀█  ▓██ ▒ ██▒▒██▓  ██▒▓██   ▒ ▓  ██▒ ▓▒
  ▒█░ █ ░█ ▒██▒▒ ▓██░ ▒░▒▓█    ▄ ▒██▀▀██░▒▓█    ▄ ▓██ ░▄█ ▒▒██▒  ██░▒████ ░ ▒ ▓██░ ▒░
  ░█░ █ ░█ ░██░░ ▓██▓ ░ ▒▓▓▄ ▄██▒░▓█ ░██ ▒▓▓▄ ▄██▒▒██▀▀█▄  ░██  █▀ ░░▓█▒  ░ ░ ▓██▓ ░ 
  ░░██▒██▓ ░██░  ▒██▒ ░ ▒ ▓███▀ ░░▓█▒░██▓▒ ▓███▀ ░░██▓ ▒██▒░▒███▒█▄ ░▒█░      ▒██▒ ░ 
  ░ ▓░▒ ▒  ░▓    ▒ ░░   ░ ░▒ ▒  ░ ▒ ░░▒░▒░ ░▒ ▒  ░░ ▒▓ ░▒▓░░░ ▒▒░ ▒  ▒ ░      ▒ ░░   
    ▒ ░ ░   ▒ ░    ░      ░  ▒    ▒ ░▒░ ░  ░  ▒     ░▒ ░ ▒░ ░ ▒░  ░  ░          ░    
    ░   ░   ▒ ░  ░      ░         ░  ░░ ░░          ░░   ░    ░   ░  ░ ░      ░      
      ░     ░           ░ ░       ░  ░  ░░ ░         ░         ░                     
                        ░                ░                                           */
{
  description = "Black magic for witches";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/2.91.1-2.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
    };
    swww.url = "github:LGFae/swww";
    ags.url = "github:aylur/ags";
    catppuccin.url = "github:catppuccin/nix";
    #nvf.url = "github:notashelf/nvf";
    nixos-conf-editor.url = "github:snowfallorg/nixos-conf-editor";
    nix-software-center.url = "github:snowfallorg/nix-software-center";
    ghostty = {
      url = "github:ghostty-org/ghostty";
    };
  };

  outputs = { nixpkgs, ... }@inputs: 
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      witchcraft = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
          inputs.lix-module.nixosModules.default
          inputs.catppuccin.nixosModules.catppuccin
          inputs.nur.modules.nixos.default
          inputs.nur.legacyPackages."${system}".repos.iopq.modules.xraya
          inputs.home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.emile = import ./home;
          }
        ];
      };
    };
  };
}
