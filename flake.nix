{
  description = "La flake que emocionó a Spielberg";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";
    systems.url = "github:nix-systems/default-linux";
    hardware.url = "github:nixos/nixos-hardware";
  };

  outputs = { self, nixpkgs, ... }: {

    nixosConfigurations = {
      nonelap = nixpkgs.lib.nixosSystem
        {
          system = "x86_64-linux";
          modules = [
            ./host/laptop/configuration.nix
          ];
        };
    };

  };
}

