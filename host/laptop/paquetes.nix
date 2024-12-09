{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    neovim
    lsd
    git
    alacritty
    kitty
    waybar
    tmux
    rofi
    zsh
    bat
    nerdfonts
    lazygit
    dunst
    fish
    nodejs_23
    pnpm
    gnumake
    python314
    go
    rustc
    cargo
    fzf
    docker
    docker-compose
    gcc
    glibc
    binutils
    wl-clipboard
  ];
}
