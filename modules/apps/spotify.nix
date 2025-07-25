{ inputs, pkgs, ... }:
let
  spicePkgs = inputs.spotify.legacyPackages.${pkgs.stdenv.system};
in
{
  imports = [ inputs.spotify.homeManagerModules.spicetify ];
  programs.spicetify = {
    enable = true;
    theme = spicePkgs.themes.catppuccin;
    colorScheme = "mocha";
  };
}