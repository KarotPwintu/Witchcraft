#█    ██ ▄▄▄█████▓ ██▓ ██▓     ██▓▄▄▄█████▓▓██   ██▓ #
# ██  ▓██▒▓  ██▒ ▓▒▓██▒▓██▒    ▓██▒▓  ██▒ ▓▒ ▒██  ██▒#
#▓██  ▒██░▒ ▓██░ ▒░▒██▒▒██░    ▒██▒▒ ▓██░ ▒░  ▒██ ██░#
#▓▓█  ░██░░ ▓██▓ ░ ░██░▒██░    ░██░░ ▓██▓ ░   ░ ▐██▓░#
#▒▒█████▓   ▒██▒ ░ ░██░░██████▒░██░  ▒██▒ ░   ░ ██▒▓░#
#░▒▓▒ ▒ ▒   ▒ ░░   ░▓  ░ ▒░▓  ░░▓    ▒ ░░      ██▒▒▒ #
#░░▒░ ░ ░     ░     ▒ ░░ ░ ▒  ░ ▒ ░    ░     ▓██ ░▒░ #
# ░░░ ░ ░   ░       ▒ ░  ░ ░    ▒ ░  ░       ▒ ▒ ░░  #
#   ░               ░      ░  ░ ░            ░ ░     #
#                                            ░ ░     #
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gnome-calculator
    gnome-clocks
    gnome-disk-utility
    gnome-maps
    gnome-system-monitor
    gnome-weather
  ];
}