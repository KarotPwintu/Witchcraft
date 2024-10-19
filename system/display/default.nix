#▓█████▄  ██▓  ██████  ██▓███   ██▓    ▄▄▄     ▓██   ██▓#
#▒██▀ ██▌▓██▒▒██    ▒ ▓██░  ██▒▓██▒   ▒████▄    ▒██  ██▒#
#░██   █▌▒██▒░ ▓██▄   ▓██░ ██▓▒▒██░   ▒██  ▀█▄   ▒██ ██░#
#░▓█▄   ▌░██░  ▒   ██▒▒██▄█▓▒ ▒▒██░   ░██▄▄▄▄██  ░ ▐██▓░#
#░▒████▓ ░██░▒██████▒▒▒██▒ ░  ░░██████▒▓█   ▓██▒ ░ ██▒▓░#
# ▒▒▓  ▒ ░▓  ▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░░ ▒░▓  ░▒▒   ▓▒█░  ██▒▒▒ #
# ░ ▒  ▒  ▒ ░░ ░▒  ░ ░░▒ ░     ░ ░ ▒  ░ ▒   ▒▒ ░▓██ ░▒░ #
# ░ ░  ░  ▒ ░░  ░  ░  ░░         ░ ░    ░   ▒   ▒ ▒ ░░  #
#   ░     ░        ░               ░  ░     ░  ░░ ░     #
# ░                                             ░ ░     #
{ pkgs, config, ...}:

{
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];
  };
  #services.xserver.videoDrivers = [ "nvidia" ];
  #hardware.opengl.enable = true;
  #hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
}