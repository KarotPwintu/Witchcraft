{ pkgs, ... }:

{
  imports = [
    ./Config
    ./Pkgs
    ./Theme
  ];
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion = {
      enable = true;
    };
    syntaxHighlighting = {
      enable = true;
    };
    dotDir = "./.nix/shell";
  };
  programs.nix-your-shell = {
    enable = true;
    enableZshIntegration = true;
  };
}
