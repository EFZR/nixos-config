{
  config = {
    home-manager.users.efzr = {
      programs.fzf = {
        enable = true;
        enableZshIntegration = true;
      };
    };
  };
}
