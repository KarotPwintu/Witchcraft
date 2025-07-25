{ ... }:

{
  services = {
    mpd = {
      enable = true;
      musicDirectory = "/run/media/ema/Media/Music";
    };
    mpd-discord-rpc = {
      enable = true;
    };
    mpd-mpris = {
      enable = true;
    };
  };
}