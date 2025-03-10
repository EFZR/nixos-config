{
  imports = [ ./gh.nix ./lazygit.nix ];

  config = let
    base = {
      programs.git = {
        enable = true;

        userEmail = "emerson.zapatarivas@gmail.com";
        userName = "efzr";

        extraConfig = {
          init.defaultBranch = "main";
          push.autoSetupRemote = true;
          pull.rebase = true;
          github.user = "efzr";
          safe.directory = "/home/efzr/Documents/nixos-config";
        };
      };
    };
  in {
    home-manager.users.efzr = { ... }: base;
    home-manager.users.root = { ... }: base;
  };
}
