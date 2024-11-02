#theme
{ inputs, ... }:

{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];
  stylix = {
    enable = false;
    image = ./wallpaper/wallpaper.gif;
    polarity = "dark";
    #fonts = {};

  };
}