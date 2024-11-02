#alias
{ pkgs, ... }:

{
  programs.zsh.shellAliases = {
    home = "cd ~";
    update = "";
    tree = "erd";
    bonsai = "cbonsai";
    ls = "eza";
    cat = "bat";
    file = "nnn";
    fetch = "fastfest";
    system = "btop";

  };
}