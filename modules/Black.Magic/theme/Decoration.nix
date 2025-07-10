{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    decoration = {
      rounding = 15;
      rounding_power = 2.0;

      active_opacity = 0.8;
      inactive_opacity = 0.8;

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
}