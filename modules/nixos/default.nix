{ pkgs, settings, ... }:

{
  flake.nixosModules.system = { config, pkgs, settings, ... }:
  {
    imports = [
      ./core
      ./virtualisation
    ];
    config = {
      catppuccin = {
    enable = true;
    flavor = "mocha";
  };
  programs.zsh.enable = true;
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  nix.settings.experimental-features = [ "nix-command" "flakes"];
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Set your time zone.
  time.timeZone = "Europe/Brussels";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;


  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
    maple-mono.NF
  ];
  programs.nh = {
    enable = true;
    flake = "/home/${settings.Username}/Documents/Witchcraft";
  };
      system.stateVersion = "25.11";
    };
  };
}