{ pkgs, ... }:
{
  imports = [
    ./zsh.nix
		./ghostty.nix
  ];
  users = {
    defaultUserShell = pkgs.zsh;
  };
}
