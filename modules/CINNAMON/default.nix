{ pkgs, lib, ... }:

{
  services.xserver = {
    enable = true;
    #displayManager.lightdm.enable = true;
    desktopManager.cinnamon.enable = true;
  };
  environment.cinnamon.excludePackages = with pkgs; [
    celluloid
    gnome-calendar
    onboard
    pix
    gnome-calculator
    gnome-user-docs
    gnome-text-editor
    gnome-terminal
    warpinator
  ];
}
