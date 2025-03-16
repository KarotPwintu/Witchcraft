{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    #profiles = {
    #  karotpwintu = {
    #    extensions = with pkgs; [
    #      vscode-extensions.jnoortheen.nix-ide
    #      vscode-extensions.catppuccin.catppuccin-vsc
    #      vscode-extensions.catppuccin.catppuccin-vsc-icons
    #      vscode-extensions.github.copilot
    #      vscode-extensions.github.copilot-chat
    #      vscode-extensions.eamodio.gitlens
    #      vscode-extensions.johnpapa.vscode-peacock
    #    ];
    #  };
    #};
  };
}
