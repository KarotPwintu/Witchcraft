{ pkgs, ... }:

{
  imports = [
    ./Gamemode.nix
    ./Gamescope.nix
  ];
  environment.systemPackages = with pkgs; [
    adwsteamgtk
  ];
  programs = {
    steam = {
      enable = true;
      protontricks.enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      extraPackages = with pkgs; [
        proton-ge-bin
      ];
    };
  };
}