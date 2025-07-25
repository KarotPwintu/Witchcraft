{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    haskell = {
      enable = false;
    };
    mutableExtensionsDir = false;
    profiles.default = {
      extensions = with pkgs; [
        vscode-extensions.jnoortheen.nix-ide
        vscode-extensions.mattn.lisp
        vscode-extensions.zainchen.json
        vscode-extensions.ms-python.python
        vscode-extensions.leonardssh.vscord
        vscode-extensions.ecmel.vscode-html-css
        vscode-extensions.catppuccin.catppuccin-vsc-icons
        vscode-extensions.catppuccin.catppuccin-vsc
      ];
      userSettings = {
        "catppuccin.accentColor" = "mauve";
        "editor.semanticHighlighting.enabled"= true;
        "workbench.colorTheme" = "Catppuccin Mocha";
        "workbench.iconTheme" = "catppuccin-mocha";
        "git.autofetch" = true;
        "editor.fontFamily" = "'Maple Mono NF', 'monospace', monospace";
      };
    };
  };
}