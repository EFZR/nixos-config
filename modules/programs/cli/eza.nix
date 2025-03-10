{
  config = {
    home-manager.users.efzr = {
      programs.eza = {
        enable = true;
        enableZshIntegration = true;
        icons = "auto";
        git = true;
      };
    };
  };
}
