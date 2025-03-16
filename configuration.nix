{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      #./modules/AI
      ./modules/CAT
      #./modules/DAW
      #./modules/GAMING
      #./modules/HACK
      #./modules/MAGIC
      #./modules/MEDIA
      #./modules/STYLIX
      ./system
      ./hardware-configuration.nix
    ];

  # Set your time zone.
  time.timeZone = "Europe/Brussels";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  # Configure console keymap
  console.keyMap = "us";
  programs.zsh.enable = true;
}

