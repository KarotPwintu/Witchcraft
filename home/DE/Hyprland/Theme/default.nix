#theme
{ pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    decoration = {
      rounding = 10;
      active_opacity = 0.8;
      inactive_opacity = 0.8;
      fullscreen_opacity = 1.0;
      drop_shadow = true;
      shadow_range = 5;
      shadow_ignore_window = true;
      shadow_scale = 1.0;
      dim_inactive = false;
      blur = {
        enabled = true;
        size = 8;
        passes = 3;
        ignore_opacity = false;
        xray = true;
        noise = 0.1;
        #contrast
        #brightness
        #vibrancy
        special = true;
        popups = true;
      };
    };
    animations = {
      enabled = true;
      first_launch_animation = true;
    };
  };
}
