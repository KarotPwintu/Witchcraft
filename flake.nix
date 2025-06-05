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

  inputs = {
    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/2.93.0.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs = {
      type = "github";
      owner = "nixos";
      repo = "nixpkgs";
      ref = "nixos-unstable";
    };
    flake-parts = {
      type = "github";
      owner = "hercules-ci";
      repo = "flake-parts";
    };
    home = {
      type = "github";
      owner = "nix-community";
      repo = "home-manager";
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
    pyprland = {
      type = "github";
      owner = "hyprland-community";
      repo = "pyprland";
    };
    swww = {
      type = "github";
      owner = "LGFae";
      repo = "swww";
    };
    ags = {
      type = "github";
      owner = "aylur";
      repo = "ags";
    };
    catppuccin = {
      type = "github";
      owner = "catppuccin";
      repo = "nix";
    };
    spicetify = {
      type = "github";
      owner = "Gerg-L";
      repo = "spicetify-nix";
    };
    apple-fonts = {
      url = "github:Lyndeno/apple-fonts.nix";
    };
  };

  outputs = { flake-parts, ... }@inputs: 
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
      ];
      imports = [
        ./modules
      ];
    };
}
