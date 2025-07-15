{
  config = {
    programs.virt-manager.enable = true;
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;
    users = {
      groups.libvirtd.members = [ "efzr" ];
      users.efzr.extraGroups = [ "libvirtd" ];
    };
  };
}
