{ pkgs, ... }:
{
  #imports = [ ./Greeter.nix ];
  users = {
    defaultUserShell = pkgs.zsh;
    users.ema = {
      isNormalUser = true;
      description = "Ema";
      useDefaultShell = true;
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [];
    };  
  };
}  