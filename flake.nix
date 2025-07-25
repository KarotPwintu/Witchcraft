{
  description = "Black magic for witches";

  outputs = { flake-parts, ... }@inputs: 
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        inputs.make-shell.flakeModules.default
        inputs.home-manager.flakeModules.home-manager
        ./hosts/desktop
        ./modules/apps
        ./modules/gnome
        ./modules/gaming
        ./modules/nixos
      ];
      systems = [
        "x86_64-linux"
      ];
      perSystem = { config, pkgs, ... }: {
        make-shells.default = {
          name = "Python";
          packages = [
            (pkgs.python3.withPackages(p: with p; [

            ]))
          ];
          env = {};
        };
      };
    };
  inputs = {
    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/2.93.2-1.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    poetry2nix = {
      url = "github:nix-community/poetry2nix";
    };
    nix-doom-emacs-unstraightened.url = "github:marienz/nix-doom-emacs-unstraightened";
    make-shell.url = "github:nicknovitski/make-shell";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    chaotic = {
      url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    };
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };
    catppuccin = {
      url = "github:catppuccin/nix";
    };
    hyprland = {
      url = "github:hyprwm/hyprland";
    };
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
    astal = {
      url = "github:aylur/astal";
    };
    ags = {
      url = "github:aylur/ags";
    };
    matugen = {
      url = "github:/InioX/Matugen";
    };
    swww = {
      url = "github:LGFae/swww";
    };
    apple-fonts = {
      url = "github:Lyndeno/apple-fonts.nix";
    };
    spotify = {
      url = "github:Gerg-L/spicetify-nix";
    };
    vim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    winapps = {
      url = "github:winapps-org/winapps";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    cursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.hyprlang.follows = "hyprland/hyprlang";
    };
  };
}
