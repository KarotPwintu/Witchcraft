# █     █░ ██▓▄▄▄█████▓ ▄████▄   ██░ ██  ▄████▄   ██▀███    █████    █████▒▄▄▄█████▓#
#▓█░ █ ░█░▓██▒▓  ██▒ ▓▒▒██▀ ▀█  ▓██░ ██▒▒██▀ ▀█  ▓██ ▒ ██▒▒██▓  ██▒▓██   ▒ ▓  ██▒ ▓▒#
#▒█░ █ ░█ ▒██▒▒ ▓██░ ▒░▒▓█    ▄ ▒██▀▀██░▒▓█    ▄ ▓██ ░▄█ ▒▒██▒  ██░▒████ ░ ▒ ▓██░ ▒░#
#░█░ █ ░█ ░██░░ ▓██▓ ░ ▒▓▓▄ ▄██▒░▓█ ░██ ▒▓▓▄ ▄██▒▒██▀▀█▄  ░██  █▀ ░░▓█▒  ░ ░ ▓██▓ ░ #
#░░██▒██▓ ░██░  ▒██▒ ░ ▒ ▓███▀ ░░▓█▒░██▓▒ ▓███▀ ░░██▓ ▒██▒░▒███▒█▄ ░▒█░      ▒██▒ ░ #
#░ ▓░▒ ▒  ░▓    ▒ ░░   ░ ░▒ ▒  ░ ▒ ░░▒░▒░ ░▒ ▒  ░░ ▒▓ ░▒▓░░░ ▒▒░ ▒  ▒ ░      ▒ ░░   #
#  ▒ ░ ░   ▒ ░    ░      ░  ▒    ▒ ░▒░ ░  ░  ▒     ░▒ ░ ▒░ ░ ▒░  ░  ░          ░    #
#  ░   ░   ▒ ░  ░      ░         ░  ░░ ░░          ░░   ░    ░   ░  ░ ░      ░      #
#    ░     ░           ░ ░       ░  ░  ░░ ░         ░         ░                     #
#                      ░                ░                                           #
{
  description = "Black magic for witches";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
    };
    spicetify-nix = {
      url = "github:gerg-l/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-flatpak.url = "github:gmodena/nix-flatpak";
    #hyprland = {
    #  type = "git";
    #  url = "https://github.com/hyprwm/Hyprland";
    #  submodules = true;
    #};
    #hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";
  };

  outputs = inputs@{ nixpkgs, home-manager, self, ... }:
    let

    username = "emile";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      overlays = [
        inputs.hyprpanel.overlay
	  ];
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;

    in {
      homeConfiguration = {
        ${username} = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home ];
          specialArgs = { inherit self inputs username ; };
        };
      };
      nixosConfigurations = {
      desktop = lib.nixosSystem {
        inherit system;
        modules = [ ./hosts/desktop ];
        specialArgs = { host="desktop"; inherit self inputs username ; };
      };
      laptop = lib.nixosSystem {
        inherit system;
        modules = [ ./hosts/laptop ];
        specialArgs = { host="laptop"; inherit self inputs username ; };
      };
      server = lib.nixosSystem {
        inherit system;
        modules = [ ./hosts/server ];
        specialArgs = { host="server"; inherit self inputs username ; };
      };
    };
  };
}