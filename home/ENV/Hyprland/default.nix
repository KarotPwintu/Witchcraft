/*██░x ██▓██   ██▓ ██▓███   ██▀███   ██▓    ▄▄▄       ███▄    █ ▓█████▄ 
  ▓██░ ██▒▒██  ██▒▓██░  ██▒▓██ ▒ ██▒▓██▒   ▒████▄     ██ ▀█   █ ▒██▀ ██▌
  ▒██▀▀██░ ▒██ ██░▓██░ ██▓▒▓██ ░▄█ ▒▒██░   ▒██  ▀█▄  ▓██  ▀█ ██▒░██   █▌
  ░▓█ ░██  ░ ▐██▓░▒██▄█▓▒ ▒▒██▀▀█▄  ▒██░   ░██▄▄▄▄██ ▓██▒  ▐▌██▒░▓█▄   ▌
  ░▓█▒░██▓ ░ ██▒▓░▒██▒ ░  ░░██▓ ▒██▒░██████▒▓█   ▓██▒▒██░   ▓██░░▒████▓ 
   ▒ ░░▒░▒  ██▒▒▒ ▒▓▒░ ░  ░░ ▒▓ ░▒▓░░ ▒░▓  ░▒▒   ▓▒█░░ ▒░   ▒ ▒  ▒▒▓  ▒ 
   ▒ ░▒░ ░▓██ ░▒░ ░▒ ░       ░▒ ░ ▒░░ ░ ▒  ░ ▒   ▒▒ ░░ ░░   ░ ▒░ ░ ▒  ▒ 
   ░  ░░ ░▒ ▒ ░░  ░░         ░░   ░   ░ ░    ░   ▒      ░   ░ ░  ░ ░  ░ 
   ░  ░  ░░ ░                 ░         ░  ░     ░  ░         ░    ░    
          ░ ░                                                    ░      */
{ inputs, pkgs, ...}:

{
  imports = [
    ./Config
    ./Shell
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd = {
      enable = true;
    };
    settings = {
      general = {
        border_size = "1";
        no_border_on_floating = false;
        gaps_in = "5";
        gaps_out = "20";
        resize_on_border = true;
     };
     misc = {
       disable_hyprland_logo = false;
       disable_splash_rendering = true;
     };
    }; 
  };
}

