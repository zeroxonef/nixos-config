{ config, pkgs, ... }:
{
  imports = [ <home-manager/nixos> ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    backupFileExtension = "backup";
  };
}
