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
      #enableXdgAutostart = true;
      variables = [ "--all" ];
    };
    plugins = [];
    settings = {
      general = {
        border_size = "1";
        no_border_on_floating = false;
        gaps_in = "5";
        gaps_out = "20";
        resize_on_border = true;
     };
     misc = {
       disable_hyprland_logo = true;
       disable_splash_rendering = true;
     };
    }; 
  };
  home.sessionVariables = {
    NIXOS_OZONE_WL = 1;
    __GL_GSYNC_ALLOWED = 0;
    __GL_VRR_ALLOWED = 0;
    _JAVA_AWT_WM_NONEREPARENTING = 1;
    DISABLE_QT5_COMPAT = 0;
    GDK_BACKEND = "wayland";
    ANKI_WAYLAND = 1;
    DIRENV_LOG_FORMAT = "";
    WLR_DRM_NO_ATOMIC = 1;
    MOZ_ENABLE_WAYLAND = 1;
    WLR_BACKEND = "vulkan";
    WLR_RENDERER = "vulkan";
    WLR_NO_HARDWARE_CURSORS = 1;
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_TYPE = "wayland";
    XDG_SESSION_DESKTOP = "Hyprland";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    GTK_THEME = "Colloid-Dark";
    GBM_BACKEND= "nvidia-drm";
    __GLX_VENDOR_LIBRARY_NAME= "nvidia";
    LIBVA_DRIVER_NAME= "nvidia"; # hardware acceleration
  };
}

