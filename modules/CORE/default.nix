# ▄████▄   ▒█████   ██▀███  ▓█████ #
#▒██▀ ▀█  ▒██▒  ██▒▓██ ▒ ██▒▓█   ▀ #
#▒▓█    ▄ ▒██░  ██▒▓██ ░▄█ ▒▒███   #
#▒▓▓▄ ▄██▒▒██   ██░▒██▀▀█▄  ▒▓█  ▄ #
#▒ ▓███▀ ░░ ████▓▒░░██▓ ▒██▒░▒████▒#
#░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░░ ▒░ ░#
#  ░  ▒     ░ ▒ ▒░   ░▒ ░ ▒░ ░ ░  ░#
#░        ░ ░ ░ ▒    ░░   ░    ░   #
#░ ░          ░ ░     ░        ░  ░#
#░                                 #
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alpaca
    blanket
    bottles
    decibels
    fragments
    gnome-secrets
    junction
    lollypop
    nautilus
    nicotine-plus
    obsidian
    vscodium
    warp
    zathura
  ];
}
