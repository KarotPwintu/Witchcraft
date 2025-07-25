{ pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot = {
    kernelPackages = pkgs.linuxPackages_cachyos;
    #kernelPackages = pkgs.linuxKernel.packages.linux_lqx;
    plymouth = {
      enable = true;
    };
  };
}