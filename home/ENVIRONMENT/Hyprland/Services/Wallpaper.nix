{ pkgs, ... }:

{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "~/Pictures/laputa.jpg" ];
      wallpaper = [ "DP-1,~/Pictures/laputa.jpg" ];
    };
  };
}
