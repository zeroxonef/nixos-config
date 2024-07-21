{ config, pkgs, ... }:
{
	boot.loader.efi.canTouchEfiVariables = true;
	boot.loader.efi.efiSysMountPoint = "/boot/efi";

	boot.initrd = {
    luks.devices."root" = {
      device = "/dev/disk/by-uuid/f2f8c565-8ecb-4f9f-9225-537be94d93bc";
      preLVM = true;
			# Allow single passphrase login; GRUB only?
      keyFile = "/keyfile0.bin";
      allowDiscards = true;
    };
    secrets = {
      "keyfile0.bin" = "/etc/secrets/initrd/keyfile0.bin";
    };
  };
}
