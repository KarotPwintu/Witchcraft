{ pkgs, ... }:

{
  programs = {
    obsidian = {
      enable = true;
      defaultSettings = {
        appearance = {};
        app = {};
        communityPlugins = [];
        cssSnippets = [];
        extraFiles = {};
        hotkeys = {};
        themes = [];
      };
      vaults = {};
    };
    firefox.profiles.Ema = {
      extensions = {
        packages = with pkgs.nur.repos.rycee.firefox-addons; [
          web-clipper-obsidian
        ];
      };
    };
  };
}