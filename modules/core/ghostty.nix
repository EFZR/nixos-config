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

      keybind = [
        "ctrl+'=new_split:down"
        "ctrl+shift+'=new_split:right"

        "ctrl+shift+h=goto_split:left"
        "ctrl+shift+j=goto_split:bottom"
        "ctrl+shift+k=goto_split:top"
        "ctrl+shift+l=goto_split:right"

        "ctrl+shift+up=scroll_to_top"
        "ctrl+shift+down=scroll_to_bottom"
      ];

      unfocused-split-opacity = 0.9;
      background-blur-radius = 20;
      # background-opacity = 0.6; # Personally I don't like this feature, but disable if needed
    };
  };
}
