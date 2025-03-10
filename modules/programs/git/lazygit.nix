{ ... }:
let
  base = home: {
    programs.lazygit = {
      enable = true;
      settings = { overrideGpg = true; };
    };
  };
in { home-manager.users.efzr = { ... }: (base "/home/efzr"); }
