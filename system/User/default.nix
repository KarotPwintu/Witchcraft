{ pkgs, ... }:
{
  users = {
    defaultUserShell = pkgs.zsh;
    users.emile = {
      isNormalUser = true;
      description = "Emile";
      useDefaultShell = true;
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [];
    };  
  };
}  