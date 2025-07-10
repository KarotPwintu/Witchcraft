{ inputs, ... }: let
  hyprPlugin = inputs.hyprland-plugins.packages.${pkgs.system};
in
{
  wayland.windowManager.hyprland = {
    plugins = with hyprPlugin; [
      hyprwinwrap
    ];
    settings.plugin = {};
  };
}