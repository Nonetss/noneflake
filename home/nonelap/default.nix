{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{

  imports = [
    ./user/config.nix
  ];

  home.username = "nonete";
  home.homeDirectory = "/home/nonete";
  home.stateVersion = "24.11";
}
