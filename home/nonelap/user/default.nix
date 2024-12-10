{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{
   imports = [
     ./config.nix
     ./environment.nix
   ];

}
