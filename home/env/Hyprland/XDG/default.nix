#▒██   ██▒▓█████▄   ▄████ #
#▒▒ █ █ ▒░▒██▀ ██▌ ██▒ ▀█▒#
#░░  █   ░░██   █▌▒██░▄▄▄░#
# ░ █ █ ▒ ░▓█▄   ▌░▓█  ██▓#
#▒██▒ ▒██▒░▒████▓ ░▒▓███▀▒#
#▒▒ ░ ░▓ ░ ▒▒▓  ▒  ░▒   ▒ #
#░░   ░▒ ░ ░ ▒  ▒   ░   ░ #
# ░    ░   ░ ░  ░ ░ ░   ░ #
# ░    ░     ░          ░ #
#          ░              #
{ pkgs, ... }:

{
  xdg = {
    enable = true;
    portal = {
      enable = true;
      config = {
        common.default = ["gtk"];
        hyprland.default = ["gtk" "hyprland" "kde" ];
      };
      configPackages = [
        pkgs.kdePackages.xdg-desktop-portal-kde
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-hyprland
      ];
    };
  };
  #userDirs = {};
}
