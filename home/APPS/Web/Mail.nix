{ pkgs, ... }:

{
  programs.thunderbird = {
    enable = true;
    profiles = {
      emile = {
        isDefault = true;
      };
    };
  };
}