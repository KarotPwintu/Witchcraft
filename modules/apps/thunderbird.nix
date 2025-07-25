{ ... }:

{
  programs.thunderbird = {
    enable = true;
    profiles.ema = {
      isDefault = true;
      search = {};
    };
  };
}