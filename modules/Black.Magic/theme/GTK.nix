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
    iconTheme = {
      name = "BeautyLine";
      package = pkgs.beautyline-icons;
    };
    cursorTheme = {
      name = "Rose Pine";
      package = inputs.cursor.packages.${pkgs.system}.default;
    };
  };
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}