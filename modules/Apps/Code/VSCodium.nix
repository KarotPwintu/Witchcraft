{ pkgs, inputs,  ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.default = {
      extensions = with pkgs; [
        vscode-extensions.jnoortheen.nix-ide
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