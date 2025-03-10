{
  config = {
    home-manager.users.efzr = {
      programs.yazi = {
        enable = true;
        enableZshIntegration = true;
        settings = { log = { enabled = false; }; };
      };
    };
  };
}
