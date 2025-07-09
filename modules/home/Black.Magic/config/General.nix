{ ... }:

{
  wayland.windowManager.hyprland.settings = {
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
  };
}