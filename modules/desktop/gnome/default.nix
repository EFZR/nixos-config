{ pkgs, lib, ... }:
{
  services = {
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome = {
        enable = true;
        extraGSettingsOverrides = ''
          [org/gnome/settings-daemon/plugins/media-keys]
          control-center=['<Super>x']
          custom-keybindings=['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']
          home=['<Super>e']

          [org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0]
          binding='<Super>g'
          command='ghostty'
          name='Open Terminal'
        '';
      };
      # libinput = { touchpad.tapping = true; };
    };

    gnome = {
      # games.enable = true;
      # gnome-initial-setup = false;
    };
  };

  environment = {
    systemPackages = with pkgs; [
      gnomeExtensions.rounded-window-corners-reborn
      gnomeExtensions.clipboard-indicator
      gnomeExtensions.blur-my-shell
      gnomeExtensions.appindicator
    ];

    gnome.excludePackages = with pkgs; [
      cheese # photo booth
      epiphany # web browser
      gedit # text editor
      simple-scan # document scanner
      yelp # help viewer
      file-roller # archive manager
      geary # email client
      gnome-maps
      gnome-music
      gnome-screenshot
      gnome-system-monitor
      gnome-weather

      # baobab # disk usage analyzer
      # eog # image viewer
      # totem # video player
      # evince # document viewer
      # seahorse # password manager
      # gnome-calculator
      # gnome-calendar
      # gnome-characters
      # gnome-clocks
      # gnome-contacts
      # gnome-font-viewer
      # gnome-logs
      # gnome-disk-utility
      # pkgs.gnome-connections
    ];
  };

  environment.sessionVariables.GST_PLUGIN_SYSTEM_PATH_1_0 =
    lib.makeSearchPathOutput "lib" "lib/gstreamer-1.0"
      (
        with pkgs.gst_all_1;
        [
          gst-plugins-good
          gst-plugins-bad
          gst-plugins-ugly
          gst-libav
        ]
      );
}
