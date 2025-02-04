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
  services.flatpak.enable = true;
  documentation.enable = false;

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.05";
}
