{ pkgs, ... }:

{
  imports = [
    #./Bible.nix
    ./Cat.nix
    #./Cd.nix
    #./Doom.nix
    ./Fetch.nix
    ./Files.nix
    ./Git.nix
    ./Ls.nix
    ./Nix.nix
    #./Portal.nix
    #./Vim.nix
    #./Yt.nix
  ];
}