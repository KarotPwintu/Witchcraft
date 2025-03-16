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
  programs = {
    gamemode = {
      enable = true;
    };
    gamescope = {
      enable = true;
    };
    steam = {
      enable = true;
      extraPackages = with pkgs; [
        adwsteamgtk
      ];
      extraCompatPackages = with pkgs; [
        proton-ge-bin
      ];
      protontricks.enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };
  };
  environment.systemPackages = with pkgs; [
    prismlauncher # Minecraft
    ryujinx             # Switch
    shadps4          # PS4
    rpcs3              # PS3
  ];
}
