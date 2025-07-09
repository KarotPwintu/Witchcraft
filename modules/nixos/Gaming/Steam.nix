{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    package = pkgs.jovian-chaotic.steam-unwrapped;
    extraPackages = with pkgs; [];
    extraCompatPackages = with pkgs; [ proton-ge-custom ];
    extest.enable = true;
    remotePlay.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
    dedicatedServer.openFirewall = true;
    gamescopeSession = {
      enable = true;
      args = [];
      steamArgs = [
        "-tenfoot"
        "-pipewire-dmabuf"
      ];
      env = {};
    };
  };
}