# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./modules/ART
      ./modules/CAT
      ./modules/CINNAMON
      ./modules/DAW
      ./modules/DEV
      ./modules/GAMING
      #./modules/GNOME
      ./modules/HACK
      ./modules/MAGIC
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
