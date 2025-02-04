{ pkgs, ... }:

{
#  services.greetd = {
#    enable = true;
#    packages = pkgs.greetd.wlgreet;
#    settings = {
#      default_session = {};
#    };
#  };
  services.xserver.displayManager.gdm = {
    enable = true;
    defaultSession = "Hyprland";
  };
}