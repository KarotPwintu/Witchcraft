/*▓█████▄ ▓█████  ██▒   █▓
  ▒██▀ ██▌▓█   ▀ ▓██░   █▒
  ░██   █▌▒███    ▓██  █▒░
  ░▓█▄   ▌▒▓█  ▄   ▒██ █░░
  ░▒████▓ ░▒████▒   ▒▀█░  
   ▒▒▓  ▒ ░░ ▒░ ░   ░ ▐░  
   ░ ▒  ▒  ░ ░  ░   ░ ░░  
   ░ ░  ░    ░        ░░  
     ░       ░  ░      ░  
   ░                  ░   */
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    #jetbrains.clion            # C/C++
    #jetbrains.datagrip         # SQL
    #jetbrains.goland           # Go
    #jetbrains.idea-community   # Java
    #jetbrains.phpstorm         # PHP
    jetbrains.pycharm-community # Python
    #jetbrains.ruby-mine        # Ruby
    #jetbrains.rider            # .NET
    #jetbrains.rust-rover       # Rust
    jetbrains.webstorm          # JavaScript

    #temp
    obsidian
    vlc
    openrgb
    kdePackages.calligra
    thunderbird-latest
  ];
}