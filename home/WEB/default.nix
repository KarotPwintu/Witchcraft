/* █     █░▓█████  ▄▄▄▄   
  ▓█░ █ ░█░▓█   ▀ ▓█████▄ 
  ▒█░ █ ░█ ▒███   ▒██▒ ▄██
  ░█░ █ ░█ ▒▓█  ▄ ▒██░█▀  
  ░░██▒██▓ ░▒████▒░▓█  ▀█▓
  ░ ▓░▒ ▒  ░░ ▒░ ░░▒▓███▀▒
    ▒ ░ ░   ░ ░  ░▒░▒   ░ 
    ░   ░     ░    ░    ░ 
      ░       ░  ░ ░      
                        ░ */
{ pkgs, ... }:

{
  imports = [
    #./Apps
    #./Tor
  ];
  programs.firefox = {
    enable = true;
    #policies = {};
   # profiles = {
   #   default = {
   #     extensions = with pkgs; [];
   #   };
   # };
  };
}