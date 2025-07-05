{ ... }:

{
  wayland.windowManager.hyprland.settings = {
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

  };
}