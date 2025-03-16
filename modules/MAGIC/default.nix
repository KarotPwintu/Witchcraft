{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    blender
    davinci-resolve
    #davinco-resolve-studio
  ];
  services.blendfarm = {
    enable = true;
  };
}
