let
  base = home: {
    programs.gh = {
      enable = true;
      settings = {
        editor = "nvim";
        git_protocol = "ssh";
      };
    };
  };
in { home-manager.users.efzr = { ... }: (base "/home/efzr"); }
