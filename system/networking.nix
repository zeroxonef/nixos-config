{ config, pkgs, ... }:
{
  # Enable NetworkManager
  networking.networkmanager.enable = true;

  # Set the system's hostname
  networking.hostName = "mizook";

  # Open up port 22 for SSH
  networking.firewall.allowedTCPPorts = [ 22 ];
}
