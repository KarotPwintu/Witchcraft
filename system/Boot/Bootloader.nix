{ pkgs, ... }:

{
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
#        efiSysMountPoint = "/boot/efi";
      };
#      grub = {
#        efiSupport = true;
#          device = "nodev";
#      };
      systemd-boot.enable = true; 
    };
  }; 
}