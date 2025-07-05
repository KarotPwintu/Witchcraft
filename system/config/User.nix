{ pkgs, settings, ... }:

{
  users = {
    users.{$settings.username} = {
      isNormalUser = true;
      description = "{$settings.name}";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [
      ];
    };
    defaultUserShell = pkgs.zsh;
  };  
}