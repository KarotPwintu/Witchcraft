{ pkgs, ... }:

{
  services.ollama = {
    enable = true;
    package = pkgs.ollama;
    acceleration = "cuda";
    environmentVariables = {};
  };
}