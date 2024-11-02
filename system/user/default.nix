# █    ██   ██████ ▓█████  ██▀███  #
# ██  ▓██▒▒██    ▒ ▓█   ▀ ▓██ ▒ ██▒#
#▓██  ▒██░░ ▓██▄   ▒███   ▓██ ░▄█ ▒#
#▓▓█  ░██░  ▒   ██▒▒▓█  ▄ ▒██▀▀█▄  #
#▒▒█████▓ ▒██████▒▒░▒████▒░██▓ ▒██▒#
#░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░░░ ▒░ ░░ ▒▓ ░▒▓░#
#░░▒░ ░ ░ ░ ░▒  ░ ░ ░ ░  ░  ░▒ ░ ▒░#
# ░░░ ░ ░ ░  ░  ░     ░     ░░   ░ #
#   ░           ░     ░  ░   ░     #
#                                  #
{ pkgs, inputs, lib, username, host, ...}:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { inherit inputs username host; };
    users.${username} = {
      imports = [ ../../home ];
      home.username = "${username}";
      home.homeDirectory = lib.mkForce "/home/${username}";
      home.stateVersion = "24.11";
      programs.home-manager.enable = true;
    };
  };

  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
#    group = "${username}";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

#  users.groups.${username} = {};
  
  nix.settings.allowed-users = [ "${username}" ];
  nix.settings.trusted-users = [ "${username}" ];
}
