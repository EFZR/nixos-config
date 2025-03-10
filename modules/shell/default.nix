{ pkgs, ... }: {
  imports = [ ./zsh.nix ];
  users = { defaultUserShell = pkgs.zsh; };
}
