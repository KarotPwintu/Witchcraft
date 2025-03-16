{ pkgs, inputs, ... }:

{
  stylix = {
    enable = true;
    polarity = "dark";
    image = ;
    fonts = {
      serif = {
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
        name = "SFProDisplay Nerd Font";
      };
      sansSerif = {
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
        name = "SFProDisplay Nerd Font";
      };
      monospace = {
        package = pkgs.maple-mono-NF;
        name = "Maple Mono NF";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };
  };
}