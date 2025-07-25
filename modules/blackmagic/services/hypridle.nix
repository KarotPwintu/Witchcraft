{ ... }:

{
  services.hypridle = {
    enable = true;
    #package = inputs.hypridle.packages.${pkgs.system}.hypridle;
    settings = {};
  };
}