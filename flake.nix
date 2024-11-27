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
#   (                       
#   )\          (       (  # 
# (((_)    (    )(     ))\ # 
# )\___    )\  (()\   /((_)# 
#((/ __|  ((_)  ((_) (_))  #  
# | (__  / _ \ | '_| / -_) #  
#  \___| \___/ |_|   \___| #
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix";
#    )                                                  #
# ( /(                        (                    (    #
# )\())  (              (     )\      )            )\ ) #
#((_)\   )\ )   `  )    )(   ((_)  ( /(    (      (()/( #
# _((_) (()/(   /(/(   (()\   _    )(_))   )\ )    ((_))#
#| || |  )(_)) ((_)_\   ((_) | |  ((_)_   _(_/(    _| | #
#| __ | | || | | '_ \) | '_| | |  / _` | | ' \)) / _` | #
#|_||_|  \_, | | .__/  |_|   |_|  \__,_| |_||_|  \__,_| #
#        |__/  |_|                                      #
    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
    ags = {
      url = "github:Aylur/ags";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    swww.url = "github:LGFae/swww";
    #hyprpaper.url = "github:hyprwm/hyprpaper";
    hyprpolkitagent.url = "github:hyprwm/hyprpolkitagent";
    hyprsunset.url = "github:hyprwm/hyprsunset";
    hyprpicker.url = "github:hyprwm/hyprpicker";
    hypridle.url = "github:hyprwm/hypridle";
    hyprlock.url = "github:hyprwm/hyprlock";
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";

    #---CONFIG---#
    musnix  = {
      url = "github:musnix/musnix"; 
    };
    spicetify-nix = {
      url = "github:gerg-l/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
#   (                          # 
#   )\                         # 
#((((_)(    `  )    `  )    (  # 
# )\ _ )\   /(/(    /(/(    )\ # 
# (_)_\(_) ((_)_\  ((_)_\  ((_)# 
#  / _ \   | '_ \) | '_ \) (_-<# 
# /_/ \_\  | .__/  | .__/  /__/# 
#          |_|     |_|         # 
    conf-editor.url = "github:snowfallorg/nixos-conf-editor";
    software-center.url = "github:snowfallorg/nix-software-center";
    zen-browser = {
      url = "github:fufexan/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, self, ... }:
    let

    username = "emile";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;

    in {
#  ██████ ▓██   ██▓  ██████ ▄▄▄█████▓▓█████  ███▄ ▄███▓  ██████ #
#▒██    ▒  ▒██  ██▒▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██▒▀█▀ ██▒▒██    ▒ #
#░ ▓██▄     ▒██ ██░░ ▓██▄   ▒ ▓██░ ▒░▒███   ▓██    ▓██░░ ▓██▄   #
#  ▒   ██▒  ░ ▐██▓░  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██    ▒██   ▒   ██▒#
#▒██████▒▒  ░ ██▒▓░▒██████▒▒  ▒██▒ ░ ░▒████▒▒██▒   ░██▒▒██████▒▒#
#▒ ▒▓▒ ▒ ░   ██▒▒▒ ▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░ ▒░   ░  ░▒ ▒▓▒ ▒ ░#
#░ ░▒  ░ ░ ▓██ ░▒░ ░ ░▒  ░ ░    ░     ░ ░  ░░  ░      ░░ ░▒  ░ ░#
#░  ░  ░   ▒ ▒ ░░  ░  ░  ░    ░         ░   ░      ░   ░  ░  ░  #
#      ░   ░ ░           ░              ░  ░       ░         ░  #
#          ░ ░                                                   #     
      nixosConfigurations = {
      ${desktop} = lib.nixosSystem {
        inherit system;
        modules = [ ./hosts/desktop ];
        specialArgs = { host="${desktop}"; inherit self inputs username ; };
      };
      laptop = lib.nixosSystem {
        inherit system;
        modules = [ ./hosts/laptop ];
        specialArgs = { host="laptop"; inherit self inputs username ; };
      };
      ${server} = lib.nixosSystem {
        inherit system;
        modules = [ ./hosts/server ];
        specialArgs = { host="${server}"; inherit self inputs username ; };
      };
    };
  };
}