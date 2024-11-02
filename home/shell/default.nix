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
  imports = [
    ./Apps
    ./Prompt
    ./alias.nix
  ];
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
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
    zoxide = {
      enable = true;
    };
  };
}