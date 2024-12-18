# ██▓███   ▒█████   ██▓     ██ ▄█▀ ██▓▄▄▄█████▓#
#▓██░  ██▒▒██▒  ██▒▓██▒     ██▄█▒ ▓██▒▓  ██▒ ▓▒#
#▓██░ ██▓▒▒██░  ██▒▒██░    ▓███▄░ ▒██▒▒ ▓██░ ▒░#
#▒██▄█▓▒ ▒▒██   ██░▒██░    ▓██ █▄ ░██░░ ▓██▓ ░ #
#▒██▒ ░  ░░ ████▓▒░░██████▒▒██▒ █▄░██░  ▒██▒ ░ #
#▒▓▒░ ░  ░░ ▒░▒░▒░ ░ ▒░▓  ░▒ ▒▒ ▓▒░▓    ▒ ░░   #
#░▒ ░       ░ ▒ ▒░ ░ ░ ▒  ░░ ░▒ ▒░ ▒ ░    ░    #
#░░       ░ ░ ░ ▒    ░ ░   ░ ░░ ░  ▒ ░  ░      #
#             ░ ░      ░  ░░  ░    ░           #                                              
{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    inputs.hyprpolkitagent.packages."${pkgs.system}".hyprpolkitagent
  ];
  wayland.windowManager.hyprland.settings.exec-once = [
    "systemctl --user start hyprpolkitagent"
  ];
}
