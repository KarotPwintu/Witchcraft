/* ▄▄▄       ██▓     ██▓ ▄▄▄        ██████ 
  ▒████▄    ▓██▒    ▓██▒▒████▄    ▒██    ▒ 
  ▒██  ▀█▄  ▒██░    ▒██▒▒██  ▀█▄  ░ ▓██▄   
  ░██▄▄▄▄██ ▒██░    ░██░░██▄▄▄▄██   ▒   ██▒
   ▓█   ▓██▒░██████▒░██░ ▓█   ▓██▒▒██████▒▒
   ▒▒   ▓▒█░░ ▒░▓  ░░▓   ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░
    ▒   ▒▒ ░░ ░ ▒  ░ ▒ ░  ▒   ▒▒ ░░ ░▒  ░ ░
    ░   ▒     ░ ░    ▒ ░  ░   ▒   ░  ░  ░  
        ░  ░    ░  ░ ░        ░  ░      ░  */
{ pkgs, ... }:

{
  programs.zsh.shellAliases = {
    home = "cd ~";
    update = "cd /etc/nixos && sudo nixos-rebuild switch --flake";
    tree = "erd";
    bonsai = "cbonsai";
    ls = "eza";
    cat = "bat";
    files = "nnn";
    fetch = "fastfest";
    system = "btop";

  };
}