{ pkgs, ... }:

{
  programs.bat = {
    enable = true;
  };
  programs.cava = {
    enable = true;
  };
  programs.eza = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.fastfetch = {
    enable = true;
  };
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.git = {
    enable = true;
  };
  programs.hyfetch = {
    enable = true;
  };
  programs.nh = {
    enable = true;
  };
  programs.ranger = {
    enable = true;
  };
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
  home.packages = with pkgs; [
    asciiquarium
    libcaca
    fireplace
    erdtree
    nyancat
    pipes
    cmatrix
    lolcat
    cbonsai
  ];
}
