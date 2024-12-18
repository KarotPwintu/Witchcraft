{ pkgs, inputs, ... }:

{
  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin";
      package = pkgs.catppuccin-gtk;
    };
    iconTheme = {
      name = "Kanagawa";
      package = pkgs.kanagawa-icon-theme;
    };
    cursorTheme = {
      name = "Apple";
      package = pkgs.apple-cursor;
    };
    #font = {};
  };
}
