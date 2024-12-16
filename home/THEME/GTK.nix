{ pkgs, inputs, ... }:

{
  gtk = {
    enable = true;
    theme = {
      name = "WhiteSur";
      package = pkgs.whitesur-gtk-theme;
    };
    iconTheme = {
      name = "WhiteSur";
      package = pkgs.whitesur-icon-theme;
    };
    cursorTheme = {
      name = "WhiteSur";
      package = pkgs.whitesur-cursors;
    };
    #font = {};
  };
}
