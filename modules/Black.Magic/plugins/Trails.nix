{ inputs, pkgs, ... }: let
  hyprPlugin = inputs.hyprland-plugins.packages.${pkgs.system};
in
{
  wayland.windowManager.hyprland = {
    plugins = with hyprPlugin; [
      hyprtrails
    ];
    settings.plugin = {
      hyprtrails = {
        color = "rgba(180, 190, 254, 1)";
      };
    };
  };
}