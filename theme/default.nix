#▄▄▄█████▓ ██░ ██ ▓█████  ███▄ ▄███▓▓█████ #
#▓  ██▒ ▓▒▓██░ ██▒▓█   ▀ ▓██▒▀█▀ ██▒▓█   ▀ #
#▒ ▓██░ ▒░▒██▀▀██░▒███   ▓██    ▓██░▒███   #
#░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄ ▒██    ▒██ ▒▓█  ▄ #
#  ▒██▒ ░ ░▓█▒░██▓░▒████▒▒██▒   ░██▒░▒████▒#
#  ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░░ ▒░   ░  ░░░ ▒░ ░#
#    ░     ▒ ░▒░ ░ ░ ░  ░░  ░      ░ ░ ░  ░#
#  ░       ░  ░░ ░   ░   ░      ░      ░   #
#          ░  ░  ░   ░  ░       ░      ░  ░#
#                                          #
{ pkgs, inputs, ... }:

{
  imports = [
    inputs.stylix.nixosModules.stylix
    #./black-magic
    #./wallpaper
  ];
  stylix = {
    enable = true;
    image = ./wallpaper/dark.png;
    polarity = "dark";
    cursor = {
      name = "Catppuccin";
      package = pkgs.catppuccin-cursors;
    };

     # Edited catppuccin
    base16Scheme = {
      base00 = "0b0b0b"; # Default Background
      base01 =
        "1b1b1b"; # Lighter Background (Used for status bars, line number and folding marks)
      base02 = "2b2b2b"; # Selection Background
      base03 = "45475a"; # Comments, Invisibles, Line Highlighting
      base04 = "585b70"; # Dark Foreground (Used for status bars)
      base05 = "fcfcfc"; # Default Foreground, Caret, Delimiters, Operators
      base06 = "f5e0dc"; # Light Foreground (Not often used)
      base07 = "b4befe"; # Light Background (Not often used)
      base08 =
        "f38ba8"; # Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
      base09 =
        "fab387"; # Integers, Boolean, Constants, XML Attributes, Markup Link Url
      base0A = "f9e2af"; # Classes, Markup Bold, Search Text Background
      base0B = "a6e3a1"; # Strings, Inherited Class, Markup Code, Diff Inserted
      base0C =
        "94e2d5"; # Support, Regular Expressions, Escape Characters, Markup Quotes
      base0D =
        "A594FD"; # Functions, Methods, Attribute IDs, Headings, Accent color
      base0E =
        "cba6f7"; # Keywords, Storage, Selector, Markup Italic, Diff Changed
      base0F =
        "f2cdcd"; # Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
    };
    fonts = {
      sansSerif = {
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
        name = "SFProDisplay Nerd Font";
      };
      serif = {
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
        name = "SFProDisplay Nerd Font";
      };
      monospace = {
        name = "Maple Mono NF";
        package = pkgs.maple-mono-NF;
      };
      #emoji = {};
    };
  };
}
