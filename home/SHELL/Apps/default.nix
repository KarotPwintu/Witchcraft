# ▄████▄   ██▓     ██▓#
#▒██▀ ▀█  ▓██▒    ▓██▒#
#▒▓█    ▄ ▒██░    ▒██▒#
#▒▓▓▄ ▄██▒▒██░    ░██░#
#▒ ▓███▀ ░░██████▒░██░#
#░ ░▒ ▒  ░░ ▒░▓  ░░▓  #
#  ░  ▒   ░ ░ ▒  ░ ▒ ░#
#░          ░ ░    ▒ ░#
#░ ░          ░  ░ ░  #
#░                    #
{ pkgs, ... }:

{
  imports = [
    #./bat.nix
    #./btop.nix
    #./bun.nix
    #./cava.nix
    ./eza.nix
    ./fetch.nix
    ./git.nix
    #./nh.nix
    #./nnn.nix
    #./zoxide.nix
    #...
  ];
  home.packages = with pkgs; [
    erdtree
  ];
}
