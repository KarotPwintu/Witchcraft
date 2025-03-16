{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    figma-linux
    figma-agent
    gimp
    krita
  ];
}
