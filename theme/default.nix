#▄▄▄█████▓ ██░ ██ ▓█████  ███▄ ▄███▓▓█████ #
#▓  ██▒ ▓▒▓██░ ██▒▓█   ▀ ▓██▒▀█▀ ██▒▓█   ▀ #
#▒ ▓██░ ▒░▒██▀▀██░▒███   ▓██    ▓██░▒███   #
#░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄ ▒██    ▒██ ▒▓█  ▄ #
#  ▒██▒ ░ ░▓█▒░██▓░▒████▒▒██▒   ░██▒░▒████▒#
#  ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░░ ▒░   ░  ░░░ ▒░ ░#
#    ░     ▒ ░▒░ ░ ░ ░  ░░  ░      ░ ░ ░  ░#
#  ░       ░  ░░ ░   ░   ░      ░      ░   #
#          ░  ░  ░   ░  ░       ░      ░  ░#                                          
{ pkgs, inputs, ... }:

{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];
  stylix = {
    enable = true;
    image = ./Wallpaper/wall.png;
    polarity = "dark";
    #opacity = {};
    fonts = {
      serif = {
        name = "sf-pro";
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
      };
      sansSerif = {
        name = "sf-pro";
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
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