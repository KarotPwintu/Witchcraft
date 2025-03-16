/*  ██████▓██   ██▓  ██████ ▄▄▄█████▓▓█████  ███▄ ▄███▓
  ▒██    ▒ ▒██  ██▒▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██▒▀█▀ ██▒
  ░ ▓██▄    ▒██ ██░░ ▓██▄   ▒ ▓██░ ▒░▒███   ▓██    ▓██░
    ▒   ██▒ ░ ▐██▓░  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██    ▒██ 
  ▒██████▒▒ ░ ██▒▓░▒██████▒▒  ▒██▒ ░ ░▒████▒▒██▒   ░██▒
  ▒ ▒▓▒ ▒ ░  ██▒▒▒ ▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░ ▒░   ░  ░
  ░ ░▒  ░ ░▓██ ░▒░ ░ ░▒  ░ ░    ░     ░ ░  ░░  ░      ░
  ░  ░  ░  ▒ ▒ ░░  ░  ░  ░    ░         ░   ░      ░   
        ░  ░ ░           ░              ░  ░       ░   
           ░ ░                                         */
{ pkgs, ... }:

{
  imports = [
    ./Audio
    ./Boot
    ./Graphic
    ./Kernel
    ./Network
    #./Periphal
    #./Security
    ./User
    ./Virt
  ];
  programs.ladybird.enable = true;
  services.flatpak.enable = true;
  documentation.enable = false;
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-kde
      xdg-desktop-portal-gnome
    ];
  };

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.05";
}
