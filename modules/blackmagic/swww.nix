{ inputs, pkgs, ... }:

{
  home.packages = [ 
    pkgs.waypaper 
  ];
  services.swww = {
    enable = true;
    #package = inputs.swww.packages.${pkgs.system}.swww;
  };
}