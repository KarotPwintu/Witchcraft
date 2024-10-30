#  ██████  ██░ ██ ▓█████  ██▓     ██▓    #
#▒██    ▒ ▓██░ ██▒▓█   ▀ ▓██▒    ▓██▒    #
#░ ▓██▄   ▒██▀▀██░▒███   ▒██░    ▒██░    #
#  ▒   ██▒░▓█ ░██ ▒▓█  ▄ ▒██░    ▒██░    #
#▒██████▒▒░▓█▒░██▓░▒████▒░██████▒░██████▒#
#▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░░ ▒░ ░░ ▒░▓  ░░ ▒░▓  ░#
#░ ░▒  ░ ░ ▒ ░▒░ ░ ░ ░  ░░ ░ ▒  ░░ ░ ▒  ░#
#░  ░  ░   ░  ░░ ░   ░     ░ ░     ░ ░   #
#      ░   ░  ░  ░   ░  ░    ░  ░    ░  ░#
#                                        #
{ pkgs, config, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch --flake .#desktop";
      home = "cd ~";
    };
  };

  home.packages = with pkgs; [
    asciiquarium
    cbonsai
    cmatrix
    erdtree
  ];

  programs = {
    bat = {
      enable = true;
    };
    btop = {
      enable = true;
    };
    bun = {
      enable = true;
    };
    cava = {
      enable = true;
    };
    eza = {
      enable = true;
      enableZshIntegration = true;
      git = true;
      icons = "auto";
    };
    fastfetch = {
      enable = true;
    };
    git = {
      enable = true;
    };
    nh = {
      enable = true;
    };
    nnn = {
      enable = true;
    };
    starship = {
      enable = true;
      enableZshIntegration = true;
    };
    zoxide = {
      enable = true;
    };
  };
}