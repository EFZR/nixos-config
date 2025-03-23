{ lib, ... }:
{
  networking = {
    hostName = "efzr";
    networkmanager.enable = true;
    useDHCP = lib.mkDefault true;
  };
}
