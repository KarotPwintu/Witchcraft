{ pkgs, ... }:

{
  services.greetd = {
    enable = true;
    package = pkgs.greetd.tuigreet;
  };
  #services.xserver.displayManager.gdm = {
  #  enable = true;
  #  defaultSession = "Hyprland";
  #};
}