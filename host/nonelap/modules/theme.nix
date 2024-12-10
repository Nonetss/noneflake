{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.adwaita-icon-theme # default gnome cursors
    glib
    gsettings-desktop-schemas

    nwg-look
  ];
}
