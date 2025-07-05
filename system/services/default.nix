{ ... }:

{
  imports = [ 
    ./Audio.nix
    ./Greeter.nix
  ];
  services.gvfs.enable = true;
}