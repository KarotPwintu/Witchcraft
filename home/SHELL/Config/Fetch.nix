{ pkgs, ... }:

{
  programs = {
    hyfetch = {
      enable = true;
      #package = ;
      settings = {
        preset = "lesbian";
        mode = "rgb";
        lightness = "0.5";
        color_align = {
          mode = "custom";
        };
        backend = "fastfetch";
      };
    };
    fastfetch = {
      enable = true;
      #package = ;
      settings = {};
    };
  };
}