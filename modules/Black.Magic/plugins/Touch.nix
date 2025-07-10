{ inputs, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    plugins = with inputs; [
      hyprgrass.packages.${pkgs.system}.default
      # optional integration with pulse-audio, see examples/hyprgrass-pulse/README.md
      hyprgrass.packages.${pkgs.system}.hyprgrass-pulse
    ];
    settings.plugin = {
      touch_gesture = {};
    };
  };
}