{ config, pkgs, ... }:
{
  imports = [ <home-manager/nixos>  ];
  users.users.jade = {
    isNormalUser = true;
    extraGroups = [ 
      "wheel" # Allow user to use !sudo!
      "kvm" # Allow user to use KVM
      "adbusers" # Allow user to use adb 
    ];
  };
  # home-manager config for jade
  home-manager.users.jade = { pkgs, ... }: {
    programs.home-manager.enable = true;
    # Allows fonts to be installed
    fonts.fontconfig.enable = true;
    
    # Packages to be installed
    home.packages = with pkgs; [
      # Fonts
      inter
      jetbrains-mono
      # CLI tools
      file
      htop
      eza
      zenith
      fastfetch
      gnumake
      neovim
      # GUI apps
      firefox
    ];

    # git config
    programs.git = {
      enable = true;
      package = pkgs.gitAndTools.gitFull;
      userName = "zeroxonef";
      userEmail = "zeroxonef.jade@proton.me";
      extraConfig = {
	core.editor = "vim"; # Use vim instead of default git editor
	credential.helper = "cache"; # Holds for 15 minutes
      };
    };
    
    # Set stateVersion for home
    home.stateVersion = "24.05";
  };
}
