{ config, pkgs, ... }:
{
  # Enable Polkit
  security.polkit.enable = true;

  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Set XDG_CONFIG_HOME
  environment.sessionVariables = rec {
    XDG_CONFIG_HOME = "\${HOME}/.config";
  };

  # Essential tools
  environment.systemPackages = with pkgs; [
    vim
    wget
    tmux
    lynx
    tree
    gcc
    libusb-compat
    libusb1
    python38
  ];
}
