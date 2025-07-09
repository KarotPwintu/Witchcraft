{ ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = true;
      format = "[](red)\$os\$username\$localip\[](bg:peach fg:red)\$directory\[](bg:yellow fg:peach)\$git_branch\$git_status\[](fg:yellow bg:green)\[](fg:green bg:sapphire)\$nix_shell\[](fg:sapphire bg:lavender)\[  ](fg:lavender)\$cmd_duration\$line_break\$character ";
      palettes.catppuccin-mocha = {
        rosewater = "#f5e0dc";
        flamingo = "#f2cdcd";
        pink = "#f5c2e7";
        mauve = "#cba6f7";
        red = "#f38ba8";
        maroon = "#eba0ac";
        peach = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        teal = "#94e2d5";
        sky = "#89dceb";
        sapphire = "#74c7ec";
        blue = "#89b4fa";
        lavender = "#b4befe";
        text = "#cdd6f4";
        subtext1 = "#bac2de";
        subtext0 = "#a6adc8";
        overlay2 = "#9399b2";
        overlay1 = "#7f849c";
        overlay0 = "#6c7086";
        surface2 = "#585b70";
        surface1 = "#45475a";
        surface0 = "#313244";
        base = "#1e1e2e";
        mantle = "#181825";
        crust = "#11111b";
      };
      os = {
        disabled = false;
        style = "bg:red fg:crust";
        symbols = {
          NixOS = "";
        };
      };
      nix_shell = {
        symbol = "";
        style = "fg:crust bg:sapphire";
        format = "[ via $symbol$state ]($style)";
        #impure_msg = "";
        #pure_msg = "";
      };
      username = {
        show_always = true;
        style_user = "bg:red fg:crust";
        style_root = "bg:red fg:crust";
        format = "[ $user]($style)";
      };
      git_branch = {
        symbol = "";
        style = "bg:yellow";
        format = "[[ $symbol $branch ](fg:crust bg:yellow)]($style)";
      };
      git_status = {
        style = "bg:yellow";
        format = "[[($all_status$ahead_behind )](fg:crust bg:yellow)]($style)";
      };
      localip = {
        disabled = false;
        ssh_only = true;
        format = "[ @[$localipv4](bg:red fg:overlay0)]($style)";
        style = "bg:red fg:crust";
      };
      directory = {
        style = "bg:peach fg:crust";
        format = "[ $path[$read_only](bg:peach fg:red) ]($style)";
        home_symbol = "";
        read_only = " 󰈈";
        truncation_length = 3;
        truncation_symbol = "…/";
        substitutions = {
          "/etc/nixos"  = "";
          "Documents" = "󰧮";
          "Downloads" = " ";
          "Music" = " ";
          "Pictures" = " ";
          "Videos" = "";
          "Templates" = "";
          "Public" = "";
        };
      };
      cmd_duration = {
        format = "󱦟 [$duration]($style)";
      };
    };
  };
}