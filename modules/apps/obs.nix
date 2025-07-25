{ pkgs, ... }:

{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      obs-3d-effect
      obs-noise
      obs-vkcapture
      pixel-art
      waveform
      wlrobs
    ];
  };
}