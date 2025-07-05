{ ... }:

{
  programs.zsh = {
    enable = true;
    dotDir = ".nix/shell/";
    autocd = true;
    autosuggestion = {
      enable = true;
      strategy = [
        "history"
      ];
    };
    syntaxHighlighting = {
      enable = true;
    };
  };
}