/*  .--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--. 
   / .. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \
   \ \/\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ \/ /
    \/ /`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'\/ / 
    / /\                                                                                            / /\ 
   / /\ \  ▄▄▄▄    ██▓    ▄▄▄      ▄████▄   ██ ▄█▀      ███▄ ▄███▓ ▄▄▄        ▄████  ██▓ ▄████▄    / /\ \
   \ \/ / ▓█████▄ ▓██▒   ▒████▄   ▒██▀ ▀█   ██▄█▒      ▓██▒▀█▀ ██▒▒████▄     ██▒ ▀█▒▓██▒▒██▀ ▀█    \ \/ /
    \/ /  ▒██▒ ▄██▒██░   ▒██  ▀█▄ ▒▓█    ▄ ▓███▄░      ▓██    ▓██░▒██  ▀█▄  ▒██░▄▄▄░▒██▒▒▓█    ▄    \/ / 
    / /\  ▒██░█▀  ▒██░   ░██▄▄▄▄██▒▓▓▄ ▄██▒▓██ █▄      ▒██    ▒██ ░██▄▄▄▄██ ░▓█  ██▓░██░▒▓▓▄ ▄██▒   / /\ 
   / /\ \ ░▓█  ▀█▓░██████▒▓█   ▓██▒ ▓███▀ ░▒██▒ █▄ ██▓ ▒██▒   ░██▒ ▓█   ▓██▒░▒▓███▀▒░██░▒ ▓███▀ ░  / /\ \
   \ \/ / ░▒▓███▀▒░ ▒░▓  ░▒▒   ▓▒█░ ░▒ ▒  ░▒ ▒▒ ▓▒ ▒▓▒ ░ ▒░   ░  ░ ▒▒   ▓▒█░ ░▒   ▒ ░▓  ░ ░▒ ▒  ░  \ \/ /
    \/ /  ▒░▒   ░ ░ ░ ▒  ░ ▒   ▒▒ ░ ░  ▒   ░ ░▒ ▒░ ░▒  ░  ░      ░  ▒   ▒▒ ░  ░   ░  ▒ ░  ░  ▒      \/ / 
    / /\   ░    ░   ░ ░    ░   ▒  ░        ░ ░░ ░  ░   ░      ░     ░   ▒   ░ ░   ░  ▒ ░░           / /\ 
   / /\ \  ░          ░  ░     ░  ░ ░      ░  ░     ░         ░         ░  ░      ░  ░  ░ ░        / /\ \
   \ \/ /       ░                 ░                 ░                                   ░          \ \/ /
    \/ /                                                                                            \/ / 
    / /\.--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--./ /\ 
   / /\ \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \/\ \
   \ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `' /
    `--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--' */
{ inputs, pkgs, ... }:

{
  flake.nixosModules.BlackMagic = { config, pkgs, ... }:
  {
    imports = [
      inputs.home.nixosModules.home-manager
      ../Gaming
    ];
    options = {};
    config = {
      programs = {
        dconf.enable = true;
        hyprland = {
          enable = true;
          package = inputs.hyprland.packages.${pkgs.system}.hyprland;
          portalPackage = inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
          withUWSM = true;
        };
      };
      home-manager = {
        users.ema = {
          imports = [
            inputs.ags.homeManagerModules.default
            ./config
            ./pkgs
            #./plugins
            ./services
            ./temp/dev.nix
            ./theme
          ];
          programs.ags = {
            enable = true;
            systemd.enable = true;
            configDir = ./src/ags;
            extraPackages = [
              inputs.astal.packages.${pkgs.system}.hyprland
              inputs.astal.packages.${pkgs.system}.astal3
              inputs.astal.packages.${pkgs.system}.astal4
              inputs.astal.packages.${pkgs.system}.apps
              inputs.astal.packages.${pkgs.system}.auth
              inputs.astal.packages.${pkgs.system}.battery
              inputs.astal.packages.${pkgs.system}.bluetooth
              inputs.astal.packages.${pkgs.system}.cava
              inputs.astal.packages.${pkgs.system}.greet
              inputs.astal.packages.${pkgs.system}.mpris
              inputs.astal.packages.${pkgs.system}.network
              inputs.astal.packages.${pkgs.system}.notifd
              inputs.astal.packages.${pkgs.system}.powerprofiles
              inputs.astal.packages.${pkgs.system}.tray
              inputs.astal.packages.${pkgs.system}.wireplumber
            ];
          };
          wayland.windowManager.hyprland = {
            enable = true;
            package = inputs.hyprland.packages.${pkgs.system}.hyprland;
            portalPackage = inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
            systemd.enable = false;
            xwayland.enable = true;
          };
        };
      };
    };
  };
}