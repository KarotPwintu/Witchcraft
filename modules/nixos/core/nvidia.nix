{ pkgs, ... }:

{
  hardware = {
    graphics = {
      enable = true;
    };
    nvidia = {
      modesetting.enable = true;
      open = true;
      nvidiaSettings = true;
    };
  };
  services.xserver.videoDrivers = ["nvidia"];
}