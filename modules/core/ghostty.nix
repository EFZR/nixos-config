# TODO: Fix this setting to work with this settings
{
  programs.ghostty = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    installVimSyntax = true;

    settings = {
      font-size = 10;
      theme = "GruvboxDark";
			gtk-titlebar = false;
      # theme=gruvbox-material
      # theme=ayu
      # theme=GruvboxLight
      # theme=catppuccin-latte
    };
  };
}
