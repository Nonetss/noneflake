{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{
  imports = [
    ./config.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };


}
