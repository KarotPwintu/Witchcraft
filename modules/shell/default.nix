{ ... }:

{
  imports = [
    ./alias.nix
    ./aria2.nix
    ./bat.nix
    ./cava.nix
    ./cmus.nix
    ./eza.nix
    ./fastfetch.nix
    ./fzf.nix
    ./git.nix
    ./misc.nix
    ./nix.nix
    ./ollama.nix
    ./starship.nix
    ./tmux.nix
    ./vim.nix
    ./yazi.nix
    ./zoxide.nix
  ];
  programs.zsh = {
    enable = true;
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
    oh-my-zsh = {
      enable = true;
      plugins = [
        "aliases"
        "colorize"
        "git"
        "tmux"
        "zoxide"
        "sudo"
      ];
    };
  };
}