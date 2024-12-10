{ config, pkgs, ... }:

{
  networking = {
    hostName = "nonete";
    networkmanager.enable = true;
    enableIPv6 = false;
    firewall.enable = false;
  };
}
