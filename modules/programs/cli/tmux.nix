{ ... }:
{
  config = {
    programs.tmux = {
      enable = true;
      baseIndex = 1;
      clock24 = true;
      keyMode = "vi";
      historyLimit = 100000;
      extraConfig = ''
        # remap prefix from 'C-b' to 'C-a'
        unbind C-b
        set-option -g prefix C-a
        bind-key C-a send-prefix

        # remap prefix from 'C-b' to 'C-a'
        unbind C-b
        set-option -g prefix C-a
        bind-key C-a send-prefix

        # switch panes using Alt-arrow without prefix
        bind h select-pane -L
        bind l select-pane -R
        bind k select-pane -U
        bind j select-pane -D

        # Enable mouse control (clickable windows, panes, resizable panes)
        set -g mouse on 

        # Resize Panes in a more efficient way
        bind -r C-j resize-pane -D 25
        bind -r C-k resize-pane -U 25
        bind -r C-h resize-pane -L 25
        bind -r C-l resize-pane -R 25
      '';
    };
  };
}
