# ██░ ██▓██   ██▓ ██▓███   ██▀███   ██▓    ▄▄▄       ███▄    █ ▓█████▄ #
#▓██░ ██▒▒██  ██▒▓██░  ██▒▓██ ▒ ██▒▓██▒   ▒████▄     ██ ▀█   █ ▒██▀ ██▌#
#▒██▀▀██░ ▒██ ██░▓██░ ██▓▒▓██ ░▄█ ▒▒██░   ▒██  ▀█▄  ▓██  ▀█ ██▒░██   █▌#
#░▓█ ░██  ░ ▐██▓░▒██▄█▓▒ ▒▒██▀▀█▄  ▒██░   ░██▄▄▄▄██ ▓██▒  ▐▌██▒░▓█▄   ▌#
#░▓█▒░██▓ ░ ██▒▓░▒██▒ ░  ░░██▓ ▒██▒░██████▒▓█   ▓██▒▒██░   ▓██░░▒████▓ #
# ▒ ░░▒░▒  ██▒▒▒ ▒▓▒░ ░  ░░ ▒▓ ░▒▓░░ ▒░▓  ░▒▒   ▓▒█░░ ▒░   ▒ ▒  ▒▒▓  ▒ #
# ▒ ░▒░ ░▓██ ░▒░ ░▒ ░       ░▒ ░ ▒░░ ░ ▒  ░ ▒   ▒▒ ░░ ░░   ░ ▒░ ░ ▒  ▒ #
# ░  ░░ ░▒ ▒ ░░  ░░         ░░   ░   ░ ░    ░   ▒      ░   ░ ░  ░ ░  ░ #
# ░  ░  ░░ ░                 ░         ░  ░     ░  ░         ░    ░    #
#        ░ ░                                                    ░      #
{ config, pkgs, lib, inputs, ... }:

{
  imports = [
    ./Apps
    ./Rules
    ./Services
    #./Shell
    #./Theme
    ./XDG
    ./keybindings.nix
    #./var.nix
  ];
  home.packages = with pkgs; [
    inputs.hyprpolkitagent.packages."${pkgs.system}".hyprpolkitagent
    rofi
    swww
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    plugins = with pkgs.hyprlandPlugins; [

    ];
    xwayland.enable = true;
    systemd.enable = true;
    settings = {
      exec-once = [
        "ags" 
        "systemctl --user start hyprpolkitagent"
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "swww-daemon"
      ];
      general = {
        resize_on_border = true;
      };
      cursor = {
        no_hardware_cursors = true;
      };
      misc = {
        disable_hyprland_logo = false;
        disable_splash_rendering = true;
        enable_swallow = true;
      };
    };
  };

  #programs.ags = {
  #  enable = true;
    #extraPackages = with pkgs; [];
  #  configDir = ./shell;
  #};

  programs.hyprlock = {
    enable = true;
  };

  #services.hyprpaper = {
    #enable = true;
  #};

  services.hypridle = {
    #enable = true;
  };

  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
  };
}