{ inputs, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
    systemd.enable = false;
    xwayland.enable = true;
    settings = {
      "$mod" = "Control_L";
      bind = [
        "$mod, Return, exec, uwsm app -- ghostty"
        "$mod, ESCAPE, exec, uwsm app -- hyprlock"

        "$mod, Q, killactive"
        "$mod, F, fullscreen"
        "$mod, SPACE, togglefloating"
        "$mod, S, togglesplit"

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"

        ",XF86AudioRaiseVolume, exec, volumectl -u up"
        ",XF86AudioLowerVolume, exec, volumectl -u down"
        ",XF86AudioMute, exec, volumectl toggle-mute"
        ",XF86AudioMicMute, exec, volumectl -m toggle-mute"
        ",XF86MonBrightnessUp, exec, lightctl up"
        ",XF86MonBrightnessDown, exec, lightctl down"

        "$mod, left,  movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up,    movefocus, u"
        "$mod, down,  movefocus, d"
      ];
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
      env = [
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
        "QT_QPA_PLATFORMTHEME,qt5ct"

        "HYPRCURSOR_THEME,rose-pine-hyprcursor"
      ];
      general = {
        border_size = 1;
        no_border_on_floating = true;
        gaps_in = 5;
        gaps_out = 20;
        gaps_workspaces = 0;
        layout = "dwindle";
        no_focus_fallback = true;
        resize_on_border = true;
        snap = {
          enabled = true;
        };
      };
      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        animate_manual_resizes = true;
        animate_mouse_windowdragging = true;
      };
      cursor = {
        no_hardware_cursors = 1;
      };
      decoration = {
        rounding = 15;
        rounding_power = 2.0;

        active_opacity = 0.7;
        inactive_opacity = 0.7;

        blur = {
          enabled = true;
          size = 8;
          passes = 3;
          ignore_opacity = true;
          xray = true;
          noise = 0.0117;
          contrast = 0.8916;
          brightness = 0.8172;
          vibrancy = 0.1696;
          vibrancy_darkness = 0.0;
          special = true;
          popups = true;
        };

        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          sharp = true;
          scale = 1.0;
        };

        dim_inactive = false;
        dim_strength = 0.5;
        dim_special = 0.2;
        dim_around = 0.4;

        #border_part_of_windows = true;
      };
    };
  };
}