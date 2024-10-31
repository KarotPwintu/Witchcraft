#  ██████▓██   ██▓  ██████ ▄▄▄█████▓▓█████  ███▄ ▄███▓#
#▒██    ▒ ▒██  ██▒▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██▒▀█▀ ██▒#
#░ ▓██▄    ▒██ ██░░ ▓██▄   ▒ ▓██░ ▒░▒███   ▓██    ▓██░#
#  ▒   ██▒ ░ ▐██▓░  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██    ▒██ #
#▒██████▒▒ ░ ██▒▓░▒██████▒▒  ▒██▒ ░ ░▒████▒▒██▒   ░██▒#
#▒ ▒▓▒ ▒ ░  ██▒▒▒ ▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░ ▒░   ░  ░#
#░ ░▒  ░ ░▓██ ░▒░ ░ ░▒  ░ ░    ░     ░ ░  ░░  ░      ░#
#░  ░  ░  ▒ ▒ ░░  ░  ░  ░    ░         ░   ░      ░   #
#      ░  ░ ░           ░              ░  ░       ░   #
#         ░ ░                                         #
{ self, pkgs, lib, inputs, ...}:

{
  imports = [
    ./audio
    ./boot
    ./display
    ./greeter
    ./kernel
    ./network
    ./user
    ./virt
    ../theme
  ];
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
  };
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  services.flatpak.enable = true;

  services.gvfs.enable = true;
  

  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.11";
}
