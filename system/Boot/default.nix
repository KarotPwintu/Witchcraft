/* ▄▄▄▄    ▒█████   ▒█████  ▄▄▄█████▓
  ▓█████▄ ▒██▒  ██▒▒██▒  ██▒▓  ██▒ ▓▒
  ▒██▒ ▄██▒██░  ██▒▒██░  ██▒▒ ▓██░ ▒░
  ▒██░█▀  ▒██   ██░▒██   ██░░ ▓██▓ ░ 
  ░▓█  ▀█▓░ ████▓▒░░ ████▓▒░  ▒██▒ ░ 
  ░▒▓███▀▒░ ▒░▒░▒░ ░ ▒░▒░▒░   ▒ ░░   
  ▒░▒   ░   ░ ▒ ▒░   ░ ▒ ▒░     ░    
   ░    ░ ░ ░ ░ ▒  ░ ░ ░ ▒    ░      
   ░          ░ ░      ░ ░           
        ░                            */
{ config, ... }:

{
  boot.loader.grub.enable = true;
  boot.loader.grub.devices = [ "nodev" ];
  boot.loader.grub.efiInstallAsRemovable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.useOSProber = true;

  boot.plymouth = {
    enable = true;
  };
}