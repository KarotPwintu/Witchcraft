{pkgs, inputs, ...}: 

{
  imports = [
    inputs.matugen.nixosModules.default
  ];
  programs.matugen = {
    enable = true;
    jsonFormat = "rgba";

    templates = {
      cava = {
        inputs_path = "./templates/cava.ini";
        outputs_path = "~/.config/cava/themes/blackmagic";
      };
      gtk3 = {
        inputs_path = "./templates/gtk.css";
        outputs_path = "~/.config/gtk-3.0/colors.css";
      };
      gtk4 = {
        inputs_path = "./templates/gtk.css";
        outputs_path = "~/.config/gtk-4.0/colors.css";
      };
      qt5 = {
        inputs_path = "./templates/qt.conf";
        outputs_path = "~/.config/qt5ct/colors/matugen.conf";
      };
      qt6 = {
        inputs_path = "./templates/qt.conf";
        outputs_path = "~/.config/qt6ct/colors/matugen.conf";
      };
      wm = {
        inputs_path = "./templates/hyprland.conf";
        outputs_path = "~/.config/hypr/colors.conf";
      };
    };
  };
}