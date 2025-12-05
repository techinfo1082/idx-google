{ pkgs, ... }:

{
  sandbox.enable = false;

  virtualisation.allowedDevices = [
    {
      device = "/dev/kvm";
      permissions = "rw";
    }
  ];

  packages = with pkgs; [
    qemu
    qemu_kvm
    libvirt
  ];
}
