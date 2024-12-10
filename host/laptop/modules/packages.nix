{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bat
    btop
    eza
    lsd
    fzf
    git
    alacritty
    lazygit
    gnumake
    lm_sensors
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtsvg
    neofetch
    neovim
    ripgrep
    tldr
    unzip
    openssl
    openssl.dev
    pkg-config
    wget
    xfce.thunar
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    zip
    zoxide
  ];
}
