{ ... }:
{
  config = {
    users = {
      users = {
        efzr = {
          isNormalUser = true;
          home = "/home/efzr";
          extraGroups = [
            "systemd-journal"
            "networkmanager"
            "wheel"
          ];
        };
      };
    };
  };
}
