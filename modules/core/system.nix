{ pkgs, ... }:
{
  system = {
    stateVersion = "24.11";
  };

  programs.nh = {
    enable = true;
    clean.enable = false;
  };

  nixpkgs.config = {
    allowUnfree = true;
  };

  nix = {
    settings = {
      trusted-users = [ "efzr" ];
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      warn-dirty = false;
    };

    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 7d";
    };
  };

  environment = {
    systemPackages = with pkgs; [
      # Command-line tools
      fastfetch

      # Archives
      zip
      xz
      unzip
      p7zip

      # Utilities
      ripgrep
      jq
      yq-go
      eza
      fzf
      bat

      # Networking tools
      nmap
      ipcalc

      # Productivity
      lazygit
      gh

      # Monitoring tools
      btop

      # Developer tools
      wget
      gnumake
      git
      tmux
      zig
      fd
      cmake
      direnv
      gcc
      docker
      ghostty

      # Extras
      cmatrix
      obs-studio
      discord

      # Libre office
      # libreoffice-qt
      # hunspell
      # hunspellDicts.en_US
      # hunspellDicts.es_HN

      # art
      gimp
      vscode
      # krita
    ];
  };

  security = {
    sudo = {
      enable = true;
      wheelNeedsPassword = false;
    };

    doas = {
      enable = false;
      extraRules = [
        {
          users = [ "efzr" ];
          keepEnv = true;
          noPass = true;
        }
      ];
    };

    polkit = {
      enable = true;
    };
  };

  # Set your time zone.
  time.timeZone = "America/Tegucigalpa";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_HN.UTF-8";
    LC_IDENTIFICATION = "es_HN.UTF-8";
    LC_MEASUREMENT = "es_HN.UTF-8";
    LC_MONETARY = "es_HN.UTF-8";
    LC_NAME = "es_HN.UTF-8";
    LC_NUMERIC = "es_HN.UTF-8";
    LC_PAPER = "es_HN.UTF-8";
    LC_TELEPHONE = "es_HN.UTF-8";
    LC_TIME = "es_HN.UTF-8";
  };
}
