{ pkgs, ... }:

{
  services.xserver.desktopManager = {
    gnome.enable = true;
  };
  environment.gnome.excludePackages = with pkgs; [];
  environment.systemPackages = with pkgs; [
    gnomeExtensions.kando-integration
    kando
  ];
}