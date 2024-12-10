{ config, pkgs, ... }:

{
  users.users.nonete = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "nonete";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };
}
