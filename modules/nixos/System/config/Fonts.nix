{ inputs, pkgs, ... }:

{
  fonts = {
    packages = [
      pkgs.maple-mono.NF
      inputs.apple-fonts.packages.${pkgs.system}.sf-pro
      inputs.apple-fonts.packages.${pkgs.system}.ny
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = [
          "New York"
        ];
        sansSerif = [
          "SF Pro"
        ];
        monospace = [
          "Maple Mono NF"
        ];
      };
    };
  };
}