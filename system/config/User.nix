{ pkgs, ... }:

{
  users = {
    users.ema = {
      isNormalUser = true;
      description = "Ema";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [
      ];
    };
    defaultUserShell = pkgs.zsh;
  };  
}