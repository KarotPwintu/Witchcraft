{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    bind = [ 
      "SUPER, K, exec, kitty"
      "SUPER, R, exec, rofi -show drun -show-icons"
    ];  
  };
}
