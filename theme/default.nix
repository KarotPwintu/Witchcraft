#▄▄▄█████▓ ██░ ██ ▓█████  ███▄ ▄███▓▓█████ #
#▓  ██▒ ▓▒▓██░ ██▒▓█   ▀ ▓██▒▀█▀ ██▒▓█   ▀ #
#▒ ▓██░ ▒░▒██▀▀██░▒███   ▓██    ▓██░▒███   #
#░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄ ▒██    ▒██ ▒▓█  ▄ #
#  ▒██▒ ░ ░▓█▒░██▓░▒████▒▒██▒   ░██▒░▒████▒#
#  ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░░ ▒░   ░  ░░░ ▒░ ░#
#    ░     ▒ ░▒░ ░ ░ ░  ░░  ░      ░ ░ ░  ░#
#  ░       ░  ░░ ░   ░   ░      ░      ░   #
#          ░  ░  ░   ░  ░       ░      ░  ░#                                          
{ inputs, ... }:

{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];
  stylix = {
    enable = true;
    image = ./wallpaper/wallpaper.gif;
    polarity = "dark";
    opacity = {};
    fonts = {
      serif = {
        name = "sf-pro";
        package = ;
      };
      sansSerif = {
        name = "sf-pro";
        package = ;
      };
      monospace = {
        name = "maple mono";
        package = pkgs.maple-mono-NF;
      };
      emoji = {
        name = "noto-emoji";
        package = pkgs.noto-fonts-color-emoji;
      };
    };
    cursor = {
      name = "oreo";
      size = 25;
      package = pkgs.oreo-cursors-plus;
    };
  };
}