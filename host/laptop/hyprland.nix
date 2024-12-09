{ pkgs, ... }:
let
  flake-compat = builtins.fetchTarball {
    url = "https://github.com/edolstra/flake-compat/archive/master.tar.gz";
    sha256 = "191c98y1lqhyzgrfxdpyb4jh2z1b9svagjmd5l37554qakncd1i7"; # Reemplazar con el hash correcto
  };

  hyprland = (import flake-compat {
    src = builtins.fetchTarball {
      url = "https://github.com/hyprwm/Hyprland/archive/main.tar.gz";
      sha256 = "0467v5q8magk02pfifi916nq7cl77nvyvqjib0hxmc7vjbmivw8l"; # Reemplazar con el hash correcto
    };
  }).defaultNix;
in
{
  programs.hyprland = {
    enable = true;
    package = hyprland.packages.${pkgs.system}.hyprland;
    portalPackage = hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
  };
}
