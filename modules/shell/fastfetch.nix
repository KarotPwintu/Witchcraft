{ ... }:

{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        #type = "small";
        padding = {
          bottom = 0;
        };
      };
      display = {
        separator = " 󰐰 ";
      };
      modules = [
        {
          type = "title";
        }
        {
         type = "uptime";
         key = "󰅐";
         keyColor = "yellow";
        }
        {
          type = "publicip";
          key = "󰇧";
          keyColor = "yellow";
        }
        {
         type = "localip";
         key = "󰩠";
         keyColor = "yellow";
        }
        {
         type = "custom";
         format = "┌───────────────────────────────────────┐";
        }
        {
         type = "chassis";
         key = "󱄅";
         keyColor = "green";
         format = "{type} {vendor} {version} {serial}";
        }
        {
         type = "os";
         key = "├";
         keyColor = "green";
         format = "{name} {#2}[v{version}]";
        }
        {
         type = "packages";
         key = "├󰏖";
         keyColor = "cyan";
        }
        {
         type = "kernel";
         key = "│├";
         keyColor = "green";
         format= "{sysname} {#2}[v{release}]";
        }
        {
         type = "theme";
         key = "";
         keyColor = "blue";
        }
        {
         type = "wm";
         key = " └";
         keyColor = "blue";
         format = "{pretty-name} {#2}[v{version}]";
        }
        {
         type = "wmtheme";
         key = "";
         keyColor = "blue";
        }
        {
          type = "wallpaper";
        }
        {
         type = "terminal";
         key = "";
         keyColor = "magenta";
         format = "{pretty-name} {#2}{#3}[v{version}]";
        }
        {
         type = "shell";
         key = "└";
         keyColor = "magenta";
         format = "{pretty-name} {#2}[v{version}]";
        }
        {
         type = "board";
         key = "";
         keyColor = "blue";
         format = "{vendor} {#2}[{name}]";
        }
        {
         type = "cpu";
         key = "├";
         keyColor = "blue";
         format = "{name}";
        }
        {
         type = "memory";
         key = "├";
         keyColor = "blue";
        }
        {
         type = "disk";
         key = "├󱛟";
         keyColor = "blue";
        }
        {
         type = "gpu";
         key = "├󰢮";
         keyColor = "blue";
        }
        {
         type = "display";
         key = "│└󰍹";
         keyColor = "blue";
        }
        {
         type = "sound";
         key = "└";
         keyColor = "blue";
        }
        {
         type = "player";
         key = " └󰽯";
         keyColor = "blue";
        }
        {
         type = "media";
         key = "  └󰽶";
         keyColor = "blue";
         format = "{title}: {#2}[{artist}@{#3}{album}]";
        }
        {
         type = "custom";
         format = "└───────────────────────────────────────┘";
        }
        {
          type = "custom";
          format = "{#white} {#black} {#cyan} {#magenta} {#blue} {#yellow} {#green} {#red}";
        }
      ];
    };
  };
}