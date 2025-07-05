{ ... }:

{
  services.greetd = {
    enable = true;
    settings = {};
  };
  programs.regreet.enable = true;
}