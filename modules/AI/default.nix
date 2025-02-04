{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alpaca
  ];
}