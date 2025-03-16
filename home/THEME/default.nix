{ pkgs, lib,  ... }:

{
  home.packages = with pkgs; [
    themechanger
    adwaita-qt
    adwaita-qt6
    qadwaitadecorations
    qadwaitadecorations-qt6
  ];
  
  gtk = {
    enable = true;
    theme = {
      package = pkgs.catppuccin-gtk;
      name = "Catppuccin";
    };
    iconTheme = {
      name = "Whitesur";
      package = pkgs.whitesur-icon-theme;
    };
    gtk2 = {
      extraConfig = "gtk-application-prefer-dark-theme = true";
    };
    gtk4 = {
      extraConfig.gtk-application-prefer-dark-theme = true;
    };
  };
  qt = {
    enable = true;
    style = {
      name = "kvantum";
      package = pkgs.catppuccin-kvantum;
    };
  };
  dconf.settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
}