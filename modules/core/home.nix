{ inputs, ... }:
{
  imports = [ inputs.nix-colors.homeManagerModules.default ];

  colorScheme = inputs.nix-colors.colorSchemes.catppuccin-macchiato;
  catppuccin = {
    flavor = "macchiato";
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    users = {
      efzr =
        { ... }:
        {
          imports = [ inputs.catppuccin.homeManagerModules.catppuccin ];

          home = {
            stateVersion = "24.11";
            packages = [ inputs.nixvim.packages.x86_64-linux.default ];
            username = "efzr";
            homeDirectory = "/home/efzr";

            sessionVariables = {
              EDITOR = "nvim";
              BROWSER = "firefox";
              TERM = "ghostty";
              NIXPKGS_ALLOW_INSECURE = 1;
            };
          };
          catppuccin = {
            flavor = "macchiato";
            accent = "peach";
          };
        };

      root = _: { home.stateVersion = "24.11"; };
    };
  };
}
