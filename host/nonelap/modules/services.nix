{ config, pkgs, ... }:

{
  services = {
    dbus.enable = true;
    picom.enable = true;
    openssh.enable = true;
    spice-vdagentd.enable = true;

    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "alt-intl";
      };
      displayManager = {
        lightdm.enable = true;
      };
    };
  };
}
