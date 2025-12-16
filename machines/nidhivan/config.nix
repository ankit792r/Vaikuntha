{ config, pkgs, inputs, var, ... }:  {
    imports = [
        ../../modules/nix-conf.nix
        ../../modules/boot.nix
        ../../modules/network.nix
        ../../modules/desktop.nix
        ../../modules/display.nix
        ../../modules/services.nix
        ../../modules/security.nix
        ../../modules/users.nix
        ../../packages/system.nix
        ../../modules/sessions/hypr.nix
        ../../modules/sessions/niri.nix
        ./hardware-configuration.nix
        ../../variables.nix
        ./style.nix
        ./home.nix
    ];

    networking.hostName = "Nidhivan";
    system.stateVersion = config.var.nixosVersion;
}
