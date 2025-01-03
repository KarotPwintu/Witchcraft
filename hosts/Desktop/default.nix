/*▓█████▄ ▓█████   ██████  ██ ▄█▀▄▄▄█████▓ ▒█████   ██▓███  
  ▒██▀ ██▌▓█   ▀ ▒██    ▒  ██▄█▒ ▓  ██▒ ▓▒▒██▒  ██▒▓██░  ██▒
  ░██   █▌▒███   ░ ▓██▄   ▓███▄░ ▒ ▓██░ ▒░▒██░  ██▒▓██░ ██▓▒
  ░▓█▄   ▌▒▓█  ▄   ▒   ██▒▓██ █▄ ░ ▓██▓ ░ ▒██   ██░▒██▄█▓▒ ▒
  ░▒████▓ ░▒████▒▒██████▒▒▒██▒ █▄  ▒██▒ ░ ░ ████▓▒░▒██▒ ░  ░
   ▒▒▓  ▒ ░░ ▒░ ░▒ ▒▓▒ ▒ ░▒ ▒▒ ▓▒  ▒ ░░   ░ ▒░▒░▒░ ▒▓▒░ ░  ░
   ░ ▒  ▒  ░ ░  ░░ ░▒  ░ ░░ ░▒ ▒░    ░      ░ ▒ ▒░ ░▒ ░     
   ░ ░  ░    ░   ░  ░  ░  ░ ░░ ░   ░      ░ ░ ░ ▒  ░░       
     ░       ░  ░      ░  ░  ░                ░ ░           
   ░                                                        */
{ pkgs, inputs, lib, username, host, ... }: 

{
  imports = [
    ./hardware-configuration.nix
    ../../system
    #../../modules/ART
    #../../modules/DAW
    #../../modules/DEV
    ../../modules/GAMING
    #../../modules/GRANDMA
    #../../modules/HACK
    #../../modules/MAGIC
    ../../modules/MEDIA
    #../../modules/PHONE
    ../../modules/VIRTUALIZATION
    #../../theme
    inputs.home-manager.nixosModules.home-manager
  ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { inherit inputs username host; };
    users.${username} = {
      imports = [ ../../home ];
      home.username = "${username}";
      home.homeDirectory = lib.mkForce "/home/${username}";
      home.stateVersion = "25.05";
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
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
}