{ pkgs, ... }:

{
  services.greetd = {
    enable = true;
    packages = pkgs.greetd.tuigreet;
  };
  #services.xserver.displayManager.gdm = {
  #  enable = true;
  #  defaultSession = "Hyprland";
  #};
}