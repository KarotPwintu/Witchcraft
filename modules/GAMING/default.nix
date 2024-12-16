/*  ▄████  ▄▄▄       ███▄ ▄███▓ ██▓ ███▄    █   ▄████ 
   ██▒ ▀█▒▒████▄    ▓██▒▀█▀ ██▒▓██▒ ██ ▀█   █  ██▒ ▀█▒
  ▒██░▄▄▄░▒██  ▀█▄  ▓██    ▓██░▒██▒▓██  ▀█ ██▒▒██░▄▄▄░
  ░▓█  ██▓░██▄▄▄▄██ ▒██    ▒██ ░██░▓██▒  ▐▌██▒░▓█  ██▓
  ░▒▓███▀▒ ▓█   ▓██▒▒██▒   ░██▒░██░▒██░   ▓██░░▒▓███▀▒
   ░▒   ▒  ▒▒   ▓▒█░░ ▒░   ░  ░░▓  ░ ▒░   ▒ ▒  ░▒   ▒ 
    ░   ░   ▒   ▒▒ ░░  ░      ░ ▒ ░░ ░░   ░ ▒░  ░   ░ 
  ░ ░   ░   ░   ▒   ░      ░    ▒ ░   ░   ░ ░ ░ ░   ░ 
        ░       ░  ░       ░    ░           ░       ░ 
                                                      */
{ pkgs, ... }:

{
  programs.gamemode.enable = true; # for performance mode

  programs.steam = {
    enable = true; # install steam
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };
  environment.systemPackages = with pkgs; [
    bottles
    cartridges
    gamemode
    prismlauncher # Minecraft
    ryujinx       # Switch
    shadps4       # PS4
    rpcs3         # PS3
  ];
}