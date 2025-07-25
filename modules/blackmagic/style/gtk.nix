{ inputs, pkgs, ... }:

{
  gtk = {
    enable = true;
    theme = {
      name = "Sweet-Dark";
      package = pkgs.sweet;
    };
    gtk3 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = true;
      };
    };
    gtk4 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = true;
      };
    };
    #theme = {};
    cursorTheme = {
      name = "Rose Pine";
      package = inputs.cursor.packages.${pkgs.system}.default;
    };
    iconTheme = {
      name = "BeautyLine";
      package = pkgs.beautyline-icons;
    };
  };
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}