{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Herramientas de línea de comandos generales
    bat
    fzf
    zoxide
    lsd
    ranger

    # Herramientas para gestión del sistema y monitorización
    btop
    wl-clipboard

    # Herramientas de desarrollo
    git
    lazygit
    zsh
    python314
    nodejs_23
    gnumake
    gcc
    openssl

    # Herramientas de personalización y entorno gráfico
    dunst
    neofetch
    alacritty
    xfce.thunar
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    home-manager

    # Herramientas relacionadas con Qt
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtsvg

    # Utilidades adicionales
    unzip
    zip
    wget
    neovim
  ];
}
