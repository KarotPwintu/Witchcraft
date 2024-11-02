# ▄▄▄       ██▀███  ▄▄▄█████▓#
#▒████▄    ▓██ ▒ ██▒▓  ██▒ ▓▒#
#▒██  ▀█▄  ▓██ ░▄█ ▒▒ ▓██░ ▒░#
#░██▄▄▄▄██ ▒██▀▀█▄  ░ ▓██▓ ░ #
# ▓█   ▓██▒░██▓ ▒██▒  ▒██▒ ░ #
# ▒▒   ▓▒█░░ ▒▓ ░▒▓░  ▒ ░░   #
#  ▒   ▒▒ ░  ░▒ ░ ▒░    ░    #
#  ░   ▒     ░░   ░   ░      #
#      ░  ░   ░              #
#                            #
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    blender
    davinci-resolve-studio
    gimp-with-plugins
    houdini
    letterpress
    lorem
    natron
  ];
}
