{
  description = "La flake que emocionó a Spielberg";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, hyprland }: {

    nixosConfigurations = {
      nonelap = nixpkgs.lib.nixosSystem
        {
          system = "x86_64-linux";
          module = [
            ./host/laptop/configuration.nix
          ];
        };
    };

  };
}

