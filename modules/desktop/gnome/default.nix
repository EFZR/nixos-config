{ ... }: {
  services = {
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
      # libinput = { touchpad.tapping = true; };
    };

    gnome = {
      # games.enable = true;
      # gnome-initial-setup = false;
    };
  };
}
