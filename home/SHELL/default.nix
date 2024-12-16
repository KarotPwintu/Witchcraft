/*  ██████  ██░ ██ ▓█████  ██▓     ██▓    
  ▒██    ▒ ▓██░ ██▒▓█   ▀ ▓██▒    ▓██▒    
  ░ ▓██▄   ▒██▀▀██░▒███   ▒██░    ▒██░    
    ▒   ██▒░▓█ ░██ ▒▓█  ▄ ▒██░    ▒██░    
  ▒██████▒▒░▓█▒░██▓░▒████▒░██████▒░██████▒
  ▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░░ ▒░ ░░ ▒░▓  ░░ ▒░▓  ░
  ░ ░▒  ░ ░ ▒ ░▒░ ░ ░ ░  ░░ ░ ▒  ░░ ░ ▒  ░
  ░  ░  ░   ░  ░░ ░   ░     ░ ░     ░ ░   
        ░   ░  ░  ░   ░  ░    ░  ░    ░  ░
                                          */
{ pkgs, config, ... }:

{
  imports = [
/*                                                                           ) 
   (               )     (    (                      )       (            ( /( 
   )\     (       /((    )\   )(     (     (        (       ))\    (      )\())
  ((_)    )\ )   (_))\  ((_) (()\    )\    )\ )     )\  '  /((_)   )\ )  (_))/ 
  | __|  _(_/(   _)((_)  (_)  ((_)  ((_)  _(_/(   _((_))  (_))    _(_/(  | |_  
  | _|  | ' \))  \ V /   | | | '_| / _ \ | ' \)) | '  \() / -_)  | ' \)) |  _| 
  |___| |_||_|    \_/    |_| |_|   \___/ |_||_|  |_|_|_|  \___|  |_||_|   \__| */     
    #./Apps
    ./Theme
    ./alias.nix
  ];
  home.packages = with pkgs; [
    asciiquarium
    cbonsai
    cmatrix
    sl
    bat
    neovim
    gh
    nh
    eza
    lolcat
    fireplace
    pipes
    fastfetch
  ];
  programs.zsh = {
    oh-my-zsh = {
      enable = true;
    };
/* (                                                   
   )\ )             )      )                            
  (()/(     (    ( /(   ( /(   (            (  (        
   /(_))   ))\   )\())  )\())  )\    (      )\))(   (   
  (_))    /((_) (_))/  (_))/  ((_)   )\ )  ((_))\   )\  
  / __|  (_))   | |_   | |_    (_)  _(_/(   (()(_) ((_) 
  \__ \  / -_)  |  _|  |  _|   | | | ' \)) / _` |  (_-< 
  |___/  \___|   \__|   \__|   |_| |_||_|  \__, |  /__/ 
                                           |___/       */    
    enable = true;
    enableCompletion = true;
    autosuggestion = {
      enable = true;
      #strategy = ;
      #highlight = ;
    };  
    syntaxHighlighting = {
      enable = true;
      #highlighters = ;
      patterns = {
        "rm -rf *" = "fg=white,bold,bg=red";
      };
    };  
    dotDir = "./.nix/shell";
    #history = {};
  };
}