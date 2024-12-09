{
  description = "La flake que emocionó a Spielberg";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, }: {

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

