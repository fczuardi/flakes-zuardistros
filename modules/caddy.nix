{ config, ... }: {
  services.caddy = {
    enable = true;
    extraConfig = ''
      http:// {
        root * ${config.services.caddy.dataDir}
        file_server
      }
    '';
  };
  networking.firewall.allowedTCPPorts = [ 80 ];
}
