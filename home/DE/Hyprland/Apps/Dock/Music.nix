{ pkgs, ... }:

{
  home.packages = with pkgs; [
    lollypop
    nicotine-plus
  ];
}