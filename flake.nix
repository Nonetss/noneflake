{
  description = "La flake que emocionó a Spielberg";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";
    systems.url = "github:nix-systems/default-linux";
    hardware.url = "github:nixos/nixos-hardware";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.3.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, lanzaboote, ... }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux"; # Cambia esto según tu sistema
      pkgs = import nixpkgs-stable { inherit system; };
      pkgs-unstable = import nixpkgs { inherit system; };
      username = "nonelap";
    in
    {
      nixosConfigurations.${username} = lib.nixosSystem {
        inherit system;
        modules = [
          ./host/${username}/configuration.nix
          lanzaboote.nixosModules.lanzaboote
        ];
        specialArgs = {
          inherit pkgs-unstable;
        };
      };
    };
}
