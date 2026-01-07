{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    copyparty.url = "github:9001/copyparty";
  };

  outputs = { self, nixpkgs, copyparty, ... }@inputs: {
    nixosConfigurations.storage01 = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./hardware-configuration.nix
        ./configuration.nix

        copyparty.nixosModules.default

        ({ pkgs, ... }: {
          networking.hostName = "storage01";
          networking.firewall.allowedTCPPorts = [ 8080 3923 ];
          networking.firewall.allowedUDPPorts = [];
          nixpkgs.overlays = [ copyparty.overlays.default ];
          environment.systemPackages = [ pkgs.copyparty ];
          services.copyparty = {
            enable = true;
            settings = {
              i = "0.0.0.0";
            };
          };
        })
      ];
    };
  };
}
