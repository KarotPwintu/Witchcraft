{ inputs, ... }:

{
  imports = [ inputs.vim.homeModules.nixvim ];

  programs.nixvim = {
    enable = true;
    enableMan = true;
    colorschemes.catppuccin.enable = true;
  };
}