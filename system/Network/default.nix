{ pkgs, ... }:

{
  networking = {
    hostName = "witchcraft";
    networkmanager.enable = true;
  };
}
