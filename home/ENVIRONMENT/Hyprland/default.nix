/*██░x ██▓██   ██▓ ██▓███   ██▀███   ██▓    ▄▄▄       ███▄    █ ▓█████▄ 
  ▓██░ ██▒▒██  ██▒▓██░  ██▒▓██ ▒ ██▒▓██▒   ▒████▄     ██ ▀█   █ ▒██▀ ██▌
  ▒██▀▀██░ ▒██ ██░▓██░ ██▓▒▓██ ░▄█ ▒▒██░   ▒██  ▀█▄  ▓██  ▀█ ██▒░██   █▌
  ░▓█ ░██  ░ ▐██▓░▒██▄█▓▒ ▒▒██▀▀█▄  ▒██░   ░██▄▄▄▄██ ▓██▒  ▐▌██▒░▓█▄   ▌
  ░▓█▒░██▓ ░ ██▒▓░▒██▒ ░  ░░██▓ ▒██▒░██████▒▓█   ▓██▒▒██░   ▓██░░▒████▓ 
   ▒ ░░▒░▒  ██▒▒▒ ▒▓▒░ ░  ░░ ▒▓ ░▒▓░░ ▒░▓  ░▒▒   ▓▒█░░ ▒░   ▒ ▒  ▒▒▓  ▒ 
   ▒ ░▒░ ░▓██ ░▒░ ░▒ ░       ░▒ ░ ▒░░ ░ ▒  ░ ▒   ▒▒ ░░ ░░   ░ ▒░ ░ ▒  ▒ 
   ░  ░░ ░▒ ▒ ░░  ░░         ░░   ░   ░ ░    ░   ▒      ░   ░ ░  ░ ░  ░ 
   ░  ░  ░░ ░                 ░         ░  ░     ░  ░         ░    ░    
          ░ ░                                                    ░      */
{ config, pkgs, lib, inputs, ... }:

{
  imports = [   

    ./Apps
    ./Configuration
    ./Services
    #./Display
    #./Input
    #./Layout
    #./Rules
    #./Services
    #./Shell
    #./Theme
    #./XDG
    ./keybindings.nix
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    #package = inputs.hyprland.packages.${pkgs.system}.default;
    plugins = with inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}; [
      #borders-plus-plus
      #hyprbars
      #hyprexpo
      #hyprtrails
      #hyprwinwrap
    ];

    settings = {
      exec-once = [
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
      ];
      general = {
        border_size = 1;
        no_border_on_floating = false;
        gaps_in = 5;
        gaps_out = 20;
        gaps_workspaces = 0;
        layout = "dwindle";
        no_focus_fallback = true;
        resize_on_border = true;
        allow_tearing = false;
      };
      cursor = {
        no_hardware_cursors = true;
      };
      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        vfr = true;
        vrr = 0;
        animate_manual_resizes = true;
        animate_mouse_windowdragging = true;
        enable_swallow = true;
        allow_session_lock_restore = true;
        new_window_takes_over_fullscreen = 0;
        exit_window_retains_fullscreen = false;
        initial_workspace_tracking = 2;
      };
    };
  };
}
