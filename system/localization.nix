{ config, pkgs, ... }:
{
  # Timezone
  time.timeZone = "Asia/Manila";
  
  # Set locale
  i18n.defaultLocale = "en_PH.UTF-8";
  console = {
    font = "Lat2=Terminus16";
  };
}
