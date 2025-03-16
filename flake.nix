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
    #lix-module = {
    #  url = "https://git.lix.systems/lix-project/nixos-module/archive/2.91.1-2.tar.gz";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
    };
    hyprpanel.url = "github:jas-singhfsu/hyprpanel";
    rose-pine-hyprcursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.hyprlang.follows = "hyprland/hyprlang";
    };
    hyprpanel.inputs.nixpkgs.follows = "nixpkgs";
    swww.url = "github:LGFae/swww";
    ags.url = "github:aylur/ags";
    catppuccin.url = "github:catppuccin/nix";
    apple-fonts = {
      url = "github:Lyndeno/apple-fonts.nix";
    };
    #nvf.url = "github:notashelf/nvf";
    nix-doom-emacs-unstraightened.url = "github:marienz/nix-doom-emacs-unstraightened";
    nix-doom-emacs-unstraightened.inputs.nixpkgs.follows = "nixpkgs";
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
        specialArgs = { 
          inherit inputs; 
          inherit system;
        };
        modules = [
          ./configuration.nix
          #inputs.lix-module.nixosModules.default
          inputs.catppuccin.nixosModules.catppuccin
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
