# ██▓███   ██▀███   ▒█████   ███▄ ▄███▓ ██▓███  ▄▄▄█████▓#
#▓██░  ██▒▓██ ▒ ██▒▒██▒  ██▒▓██▒▀█▀ ██▒▓██░  ██▒▓  ██▒ ▓▒#
#▓██░ ██▓▒▓██ ░▄█ ▒▒██░  ██▒▓██    ▓██░▓██░ ██▓▒▒ ▓██░ ▒░#
#▒██▄█▓▒ ▒▒██▀▀█▄  ▒██   ██░▒██    ▒██ ▒██▄█▓▒ ▒░ ▓██▓ ░ #
#▒██▒ ░  ░░██▓ ▒██▒░ ████▓▒░▒██▒   ░██▒▒██▒ ░  ░  ▒██▒ ░ #
#▒▓▒░ ░  ░░ ▒▓ ░▒▓░░ ▒░▒░▒░ ░ ▒░   ░  ░▒▓▒░ ░  ░  ▒ ░░   #
#░▒ ░       ░▒ ░ ▒░  ░ ▒ ▒░ ░  ░      ░░▒ ░         ░    #
#░░         ░░   ░ ░ ░ ░ ▒  ░      ░   ░░         ░      #
#            ░         ░ ░         ░                     #
#                                                        #
{ config, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      format = """
[](#9A348E)\
$os\
$username\
[](bg:#DA627D fg:#9A348E)\
$directory\
[](fg:#DA627D bg:#FCA17D)\
$git_branch\
$git_status\
[](fg:#FCA17D bg:#86BBD8)\
$c\
$elixir\
$elm\
$golang\
$gradle\
$haskell\
$java\
$julia\
$nodejs\
$nim\
$rust\
$scala\
[](fg:#86BBD8 bg:#06969A)\
$docker_context\
[](fg:#06969A bg:#33658A)\
$time\
[ ](fg:#33658A)\
""";
      #character = {};
      os = {
        style = "bg:#9A348E";
        disabled = true;
      };
      username = {
        show_always = true;
        style_user = "bg:#9A348E";
        style_root = "bg:#9A348E";
        format = '[$user ]($style)';
        disabled = false;
      };
      directory = {
        style = "bg:#DA627D";
        format = "[ $path ]($style)";
        truncation_length = 3;
        truncation_symbol = "…/";
      };
      time = {
        disabled = false;
        time_format = "%R"; # Hour:Minute Format
        style = "bg:#33658A";
        format = '[ ♥ $time ]($style)';
      };
      #nix-shell = {};
      #sudo = {};
      #battery = {};
      #bun = {};
      #c = {};
      #java = {};
      #python = {};

    };
  };
}
