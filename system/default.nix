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
    ./dev
    ./display
    ./kernel
    ./network
    ./user
    ./virt
  ];
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
  };
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;


  environment.systemPackages = with pkgs; [
    wget
    git
    bottles
    stremio
    wine
  ];

  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.11";
}
