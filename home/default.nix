{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{
  imports = [
    ./user
  ];

  home.username = "nonete";
  home.homeDirectory = "/home/nonete";
  home.stateVersion = "24.11";
}
