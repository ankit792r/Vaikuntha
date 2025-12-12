{ pkgs, ... }:  {
  networking.networkmanager.enable = true;
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 4096 ];
    allowedUDPPorts = [ ];
  };
}
