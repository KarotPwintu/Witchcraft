{ ... }:

{
  xdg = {
    enable = true;
    #cacheHome = "";
    #configHome = "";
    #dataHome = "";
    #stateHome = "";
    userDirs = {
      enable = true;
      createDirectories = true;
    };
    portal = {
      enable = true;
    };
  };
}