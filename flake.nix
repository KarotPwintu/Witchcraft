/* .--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--. 
  / .. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \
  \ \/\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ \/ /
   \/ /`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'\/ / 
   / /\                                                                                        / /\ 
  / /\ \   █     █░ ██▓▄▄▄█████▓ ▄████▄   ██░ ██  ▄████▄  ██▀███  ▄▄▄        █████▒▄▄▄█████▓  / /\ \
  \ \/ /  ▓█░ █ ░█░▓██▒▓  ██▒ ▓▒▒██▀ ▀█  ▓██░ ██▒▒██▀ ▀█ ▓██ ▒ ██▒████▄    ▓██   ▒ ▓  ██▒ ▓▒  \ \/ /
   \/ /   ▒█░ █ ░█ ▒██▒▒ ▓██░ ▒░▒▓█    ▄ ▒██▀▀██░▒▓█    ▄▓██ ░▄█ ▒██  ▀█▄  ▒████ ░ ▒ ▓██░ ▒░   \/ / 
   / /\   ░█░ █ ░█ ░██░░ ▓██▓ ░ ▒▓▓▄ ▄██▒░▓█ ░██ ▒▓▓▄ ▄██▒██▀▀█▄ ░██▄▄▄▄██ ░▓█▒  ░ ░ ▓██▓ ░    / /\ 
  / /\ \  ░░██▒██▓ ░██░  ▒██▒ ░ ▒ ▓███▀ ░░▓█▒░██▓▒ ▓███▀ ░██▓ ▒██▒▓█   ▓██▒░▒█░      ▒██▒ ░   / /\ \
  \ \/ /  ░ ▓░▒ ▒  ░▓    ▒ ░░   ░ ░▒ ▒  ░ ▒ ░░▒░▒░ ░▒ ▒  ░ ▒▓ ░▒▓░▒▒   ▓▒█░ ▒ ░      ▒ ░░     \ \/ /
   \/ /     ▒ ░ ░   ▒ ░    ░      ░  ▒    ▒ ░▒░ ░  ░  ▒    ░▒ ░ ▒░ ▒   ▒▒ ░ ░          ░       \/ / 
   / /\     ░   ░   ▒ ░  ░      ░         ░  ░░ ░░         ░░   ░  ░   ▒    ░ ░      ░         / /\ 
  / /\ \      ░     ░           ░ ░       ░  ░  ░░ ░        ░          ░  ░                   / /\ \
  \ \/ /                        ░                ░                                            \ \/ /
   \/ /                                                                                        \/ / 
   / /\.--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--./ /\ 
  / /\ \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \/\ \
  \ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `' /
   `--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--' */
{
  description = "Black Magic for witches";

  outputs = { flake-parts, ... }@inputs: let
    cfg = {
      name = "Ema";
      username = "ema";
    };
  in
  flake-parts.lib.mkFlake { inherit inputs; } {

    systems = [
      "x86_64-linux"
    ];
    imports = [
      ./modules
      ./hosts/Desktop
    ];
  };
  inputs = {
    
    #=Core=#

    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/2.93.0.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    home = {
      url = "github:nix-community/home-manager";
    };
    disko = {
      url = "github:nix-community/disko";
    };
    lanzaboote = {
      type = "github";
      owner = "nix-community";
      repo = "lanzaboote";
      ref ="v0.4.2";
    };
    chaotic = {
      type = "github";
      owner = "chaotic-cx";
      repo = "nyx";
      ref = "nyxpkgs-unstable";
    };
    nur = {
      type = "github";
      owner = "nix-community";
      repo = "NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts = {
      type = "github";
      owner = "hercules-ci";
      repo = "flake-parts";
    };
    musnix = {
      type = "github";
      owner = "musnix";
      repo = "musnix";
    };
    
    #=Wayland=#

    wayland = {
      type = "github";
      owner = "nix-community";
      repo = "nixpkgs-wayland";
      #wayland.inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      type = "github";
      owner = "hyprwm";
      repo = "Hyprland";
    };
    hyprland-plugins = {
      type = "github";
      owner = "hyprwm";
      repo = "hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
    hy3 = {
      type = "github";
      owner = "outfoxxed";
      repo = "hy3";
      inputs.hyprland.follows = "hyprland";
    };
    #hyprchroma = {
    #  type = "github";
    #  owner = "alexhulbert";
    #  repo = "hyprchoma";
    #  inputs.hyprland.follows = "hyprland";
    #};
    hyprgrass = {
      type = "github";
      owner = "horriblename";
      repo = "hyprgrass";
      inputs.hyprland.follows = "hyprland";
    };
    hyprfocus = {
      type = "github";
      owner = "pyt0xic";
      repo = "hyprfocus";
      inputs.hyprland.follows = "hyprland";
    };
    hypr-dynamic-cursors = {
      type = "github";
      owner = "VirtCode";
      repo = "hypr-dynamic-cursors";
      inputs.hyprland.follows = "hyprland";
    };
    hyprspace = {
      type = "github";
      owner = "KZDKM";
      repo = "Hyprspace";
      inputs.hyprland.follows = "hyprland";
    };
    pyprland = {
      type = "github";
      owner = "hyprland-community";
      repo = "pyprland";
    };
    #ignis = {
    #  type = "githhub";
    #  owner = "ignis-sh";
    #  repo = "ignis";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};
    astal = {
      type = "github";
      owner = "aylur";
      repo = "astal";
    };
    ags = {
      type = "github";
      owner = "aylur";
      repo = "ags";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.astal.follows = "astal";
    };
    swww = {
      type = "github";
      owner = "LGFae";
      repo = "swww";
    };
    hyprcursor = {
      type = "github";
      owner = "hyprwm";
      repo = "hyprcursor";
    };
    hypridle = {
      type = "github";
      owner = "hyprwm";
      repo = "hypridle";
    };
    hyprlock = {
      type = "github";
      owner = "hyprwm";
      repo = "hyprlock";
    };
    hyprpicker = {
      type = "github";
      owner = "hyprwm";
      repo = "hyprpicker";
    };
    hyprsunset = {
      type = "github";
      owner = "hyprwm";
      repo = "hyprsunset";
    };

    #=Themes=#

    catppuccin = {
      type = "github";
      owner = "catppuccin";
      repo = "nix";
    };
    apple-fonts = {
      type = "github";
      owner = "Lyndeno";
      repo = "apple-fonts.nix";
    };
    cursor = {
      type = "github";
      owner = "ndom91";
      repo = "rose-pine-hyprcursor";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.hyprlang.follows = "hyprland/hyprlang";
    };

    #=Apps=#

    spotify = {
      type = "github";
      owner = "Gerg-L";
      repo = "spicetify-nix";
    };
    emacs = {
      type = "github";
      owner = "nix-community";
      repo = "emacs-overlay";
    };
    doom = {
      type = "github";
      owner = "nix-community";
      repo = "nix-doom-emacs";
    };
    vim = {
      type = "github";
      owner = "nix-community";
      repo = "nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}