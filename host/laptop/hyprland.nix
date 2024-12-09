{ pkgs, ... }:
let
  flake-compat = builtins.fetchTarball "https://github.com/edolstra/flake-compat/archive/master.tar.gz";

  hyprland = (import flake-compat {
    src = builtins.fetchTarball "https://github.com/hyprwm/Hyprland/archive/main.tar.gz";
  }).defaultNix;
in
{
  programs.hyprland = {
    enable = true;
    # set the flake package
    package = hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    # make sure to also set the portal package, so that they are in sync
    portalPackage = hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };
}
