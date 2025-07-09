{ ... }:

{
  programs.virt-manager.enable = true;
  virtualisation = {
    #sharedDirectories = {};
    libvirtd = {
      enable = true;
    };
  };
}