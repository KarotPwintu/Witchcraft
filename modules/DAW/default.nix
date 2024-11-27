#▓█████▄  ▄▄▄       █     █░#
#▒██▀ ██▌▒████▄    ▓█░ █ ░█░#
#░██   █▌▒██  ▀█▄  ▒█░ █ ░█ #
#░▓█▄   ▌░██▄▄▄▄██ ░█░ █ ░█ #
#░▒████▓  ▓█   ▓██▒░░██▒██▓ #
# ▒▒▓  ▒  ▒▒   ▓▒█░░ ▓░▒ ▒  #
# ░ ▒  ▒   ▒   ▒▒ ░  ▒ ░ ░  #
# ░ ░  ░   ░   ▒     ░   ░  #
#   ░          ░  ░    ░    #
# ░                         #
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ardour
    #fretboard
    #hydrogen
    mixxx
    #musescore
  ];
}
