{ inputs, pkgs, lib, ... }:

{
  #imports = [ inputs.lanzaboote.nixosModules.lanzaboote ];
  boot = {
    #lanzaboote = {
    #  enable = true;
    #  pkiBundle = "/etc/secureboot";
    #};
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
     };
      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
      };
      #systemd-boot.enable = lib.mkForce false;
    };
 # };
  #environment.systemPackages = [ pkgs.sbctl ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot = {
    kernelPackages = pkgs.linuxKernel.packages.linux_lqx;
    plymouth = {
      enable = true;
    };
  };
}