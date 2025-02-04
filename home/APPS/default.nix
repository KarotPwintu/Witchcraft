{ pkgs, inputs, ... }:

{
  imports = [
    ./Admin
    ./Core
    #./Document
    ./Music
    #./Video
    ./Web
  ];
  home.packages = with pkgs; [
    #inputs.nixos-conf-editor.packages.${system}.nixos-conf-editor
    #inputs.nix-software-center.packages.${system}.nix-software-center
    obsidian
    #bottles
    #libsForQt5.pix
    #libsForQt5.clip
    #libsForQt5.shelf
    proton-pass
    protonvpn-gui
    #protonmail-bridge-gui
    openrgb
    protonmail-desktop
    discord
    cartridges
    parsec-bin
    gnome-software
    vlc
    spotify
    nicotine-plus
    stremio
  ];
}
