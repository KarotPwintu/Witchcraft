{ pkgs, ... }:

{
  home.packages = with pkgs; [
    astroterm
    cbonsai
    cmatrix
    fireplace
    pastel
  ];
}