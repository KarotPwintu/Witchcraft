{ lib, ... }:

{
  networking = {
    hostName = lib.mkDefault "witchcraft";
    networkmanager = {
      enable = true;
    };
  };
}