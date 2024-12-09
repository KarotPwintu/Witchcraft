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
{ self, pkgs, lib, inputs, ...}:

{
  imports = [
    ./audio
    ./boot
    ./display
    ./greeter
    ./kernel
    ./network
    #./update
    ./user
    #./vpn
  ];
  #DEV
  services.xserver.enable = true; 
  #services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.cinnamon.enable = true;

  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
  };
  documentation = {
    enable = false;
    nixos = {
      enable = false;
    };
  };
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  services.gvfs.enable = true;
  
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
}
