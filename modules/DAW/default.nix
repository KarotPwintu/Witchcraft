{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ardour
    mixxx
  ];
}
