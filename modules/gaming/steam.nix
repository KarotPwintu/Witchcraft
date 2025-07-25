{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    adwsteamgtk
  ];
  programs.steam = {
    enable = true;
    package = pkgs.steam;
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