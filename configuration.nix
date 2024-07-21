{ config, lib, pkgs, ... }:

{
  imports =
    [
      # Hardware configuration
      ./hardware-configuration.nix
      
      # System
      ./system/systemd-boot.nix
      ./system/lanzaboote.nix
      ./system/localization.nix
      ./system/networking.nix
      ./system/hardware-acceleration.nix
      ./system/home-manager.nix

      # Services
      ./services/adb.nix
#      ./services/gnupg.nix
      ./services/openssh.nix
      ./services/pipewire.nix
      ./services/kanshi.nix

      # WM/DE configs
      ./wayland/plasma.nix

      # Miscellanous
      ./misc.nix

      # User(s) config
      ./users/jade.nix
    ];

  system.copySystemConfiguration = true;
  system.stateVersion = "24.05"; # Did you read the comment?

}
