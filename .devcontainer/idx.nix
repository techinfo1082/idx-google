{ pkgs, ... }:

{
  # تعطيل Sandbox لأنه يمنع الأجهزة
  sandbox.enable = false;

  # تمرير جهاز KVM مباشرة
  virtualisation.allowedDevices = [
    {
      device = "/dev/kvm";
      permissions = "rw";
    }
  ];

  # تثبيت QEMU و KVM داخل Nix
  packages = with pkgs; [
    qemu
    qemu_kvm
    libvirt
  ];
}
