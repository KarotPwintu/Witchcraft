{ inputs, ... }:

{
  imports = [ inputs.vim.homeModules.nixvim ];

  programs.nixvim = {
    enable = true;
    enableMan = true;
    viAlias = true;
    vimAlias = true;
    withNodeJs = true;
    withPerl = true;
    withPython3 = true;
    withRuby = true;
    extraPackages = [];
    extraPlugins = [];
    env = {};
    localOpts = {};
    globalOpts = {};
    globals = {};
    extraConfigLuaPre = "";
    extraConfigLua = "";
    extraConfigLuaPost = "";
    extraConfigVim = "";
    colorschemes.catppuccin.enable = true;
  };
}