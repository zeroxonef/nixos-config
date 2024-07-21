{ config, pkgs, ... }:
{
  services = {
    displayManager = {
      sddm.wayland.enable = true;
      defaultSession = "plasma";
    };
    desktopManager.plasma6.enable = true;
  };
}
