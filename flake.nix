{
  description = "Emerson's NixOS flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

    # home-manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Catppuccin theming
    nix-colors.url = "github:misterio77/nix-colors";
    catppuccin.url = "github:catppuccin/nix";

    # Custom Flakes
    nixvim.url = "github:efzr/nixvim";
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      nixvim,
      nix-colors,
      catppuccin,
      ...
    }@inputs:
    {
      nixosConfigurations.efzr = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          home-manager.nixosModules.home-manager
          catppuccin.nixosModules.catppuccin
          ./modules/core
          ./modules/shell
          ./modules/desktop/gnome
          ./modules/programs
        ];
      };
    };
}
