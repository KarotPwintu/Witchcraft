{ ... }:

{
  flake.nixosModules.apps = { config, pkgs, inputs,  ... }:
  {
    config = {
      environment.systemPackages = with pkgs; [
        stremio
        lollypop
        nicotine-plus
        vlc
        bottles
        blender
        davinci-resolve
        mixxx
        fragments
        proton-pass
        protonvpn-gui
        protonmail-bridge
        kando
        openrgb_git
        win-spice
        virtio-win
        inputs.winapps.packages."${pkgs.system}".winapps
        inputs.winapps.packages."${pkgs.system}".winapps-launcher

        #temp#
        beautyline-icons
      ];
    };
  };
}