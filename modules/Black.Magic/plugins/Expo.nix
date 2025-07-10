{ inputs, pkgs,  ... }: let
  hyprPlugin = inputs.hyprland-plugins.packages.${pkgs.system};
in
{
  wayland.windowManager.hyprland = {
    plugins = with hyprPlugin; [
      hyprexpo
    ];
    settings = {
      plugin = {
        columns = 3;
        gap_size = 5;
        bg_col = "rgb(11, 11, 11)";
        workspace_method = "center current"; # [center/first] [workspace] e.g. first 1 or center m+1

        enable_gesture = true; # laptop touchpad
        gesture_fingers = 3;  # 3 or 4
        gesture_distance = 300; # how far is the "max"
        gesture_positive = true; # positive = swipe down. Negative = swipe up.
      };
      bind = [ "ALT, TAB, hyprexpo:expo, toggle" ];
    };
  };
}