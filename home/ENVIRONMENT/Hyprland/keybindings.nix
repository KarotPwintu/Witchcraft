/* ██ ▄█▀▓█████▓██   ██▓ ▄▄▄▄    ██▓ ███▄    █ ▓█████▄  ██▓ ███▄    █   ▄████   ██████ 
   ██▄█▒ ▓█   ▀ ▒██  ██▒▓█████▄ ▓██▒ ██ ▀█   █ ▒██▀ ██▌▓██▒ ██ ▀█   █  ██▒ ▀█▒▒██    ▒ 
  ▓███▄░ ▒███    ▒██ ██░▒██▒ ▄██▒██▒▓██  ▀█ ██▒░██   █▌▒██▒▓██  ▀█ ██▒▒██░▄▄▄░░ ▓██▄   
  ▓██ █▄ ▒▓█  ▄  ░ ▐██▓░▒██░█▀  ░██░▓██▒  ▐▌██▒░▓█▄   ▌░██░▓██▒  ▐▌██▒░▓█  ██▓  ▒   ██▒
  ▒██▒ █▄░▒████▒ ░ ██▒▓░░▓█  ▀█▓░██░▒██░   ▓██░░▒████▓ ░██░▒██░   ▓██░░▒▓███▀▒▒██████▒▒
  ▒ ▒▒ ▓▒░░ ▒░ ░  ██▒▒▒ ░▒▓███▀▒░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░▓  ░ ▒░   ▒ ▒  ░▒   ▒ ▒ ▒▓▒ ▒ ░
  ░ ░▒ ▒░ ░ ░  ░▓██ ░▒░ ▒░▒   ░  ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒  ▒ ░░ ░░   ░ ▒░  ░   ░ ░ ░▒  ░ ░
  ░ ░░ ░    ░   ▒ ▒ ░░   ░    ░  ▒ ░   ░   ░ ░  ░ ░  ░  ▒ ░   ░   ░ ░ ░ ░   ░ ░  ░  ░  
  ░  ░      ░  ░░ ░      ░       ░           ░    ░     ░           ░       ░       ░  
                ░ ░           ░                 ░                                      */
{ pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$Nix" = "SUPER";
    bind = [
      "$Nix, Return, exec, kitty"
      "$Nix, E, exec, nautilus -w"

      "$mod, L, exec, ${pkgs.hyprlock}/bin/hyprlock" # Lock

      "$Nix, Q, killactive,"
      "$mod, T, togglefloating," # Toggle Floating
      "$mod, F, fullscreen" # Toggle Fullscreen
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"

      "$mod, left, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, down, movefocus, d"

    ];
    bindr = [
      "$Nix, R, exec, rofi -i -show drun -modi drun -show-icons"
    ];
    bindm = [
      "$Nix, mouse:272, movewindow"
      "$Nix, mouse:273, resizewindow"
    ];
    # Apps
    # Shell
    # Sound
    # Brightness
    # Workspaces
    # Mouse

  };
}