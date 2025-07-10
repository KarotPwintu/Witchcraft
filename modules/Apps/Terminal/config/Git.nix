{ pkgs, ... }:

{
  programs = {
    git = {
      enable = true;
      aliases = {};
      attributes = [];
      delta = {
        enable = true;
        options = {};
        package = pkgs.delta;
      };
      extraConfig = {};
      hooks = {};
      ignores = [];
      includes = [];
      lfs = {
        enable = true;
      };
    };
  };
}