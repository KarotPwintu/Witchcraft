{ pkgs, settings, ... }:

{
  users = {
    defaultUserShell = pkgs.zsh;
    users.${settings.Username} = {
      isNormalUser = true;
      description = "${settings.Name}";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [
      ];
    };
  };
}