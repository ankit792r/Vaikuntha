{ config, pkgs, inputs, var, ... }: {
    imports = [
        ./env.nix
        ../../packages/development.nix
        ../../packages/office.nix
    ];

    programs.firefox.enable = true;
    home.username = var.username;
    home.homeDirectory = "/home/${var.username}";
    home.stateVersion = var.homeManagerVersion;

    home.packages = with pkgs; [
        xwayland-satellite
        mako
        fuzzel
        waybar
        alacritty
        swww
        swaybg
        swaylock
        imagemagick

        grim
        slurp
        pavucontrol
        brightnessctl
        wl-clipboard
        wf-recorder
        satty

        powertop
        acpi
        wayland-utils
    
        fastfetch
        zathura
        neovim
        tmux
    ];

    # home.file = {
    #     ".config/alacritty".source = ../../configs/alacritty;
    # };
}