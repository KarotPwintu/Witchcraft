{ pkgs, ... }:

{
  services.printing = {
    enable = true;
    package = pkgs.cups;
    webInterface = true;
    stateless = false;
    tempDir = "/tmp/printing";
    openFirewall = false;
    drivers = with pkgs; [
      gutenprint
    ];
  };
}