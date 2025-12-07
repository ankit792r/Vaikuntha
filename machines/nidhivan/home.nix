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

    home.sessionPath = [ "$HOME/Vaikuntha/scripts/bin" ];

    home.packages = with pkgs; [
        xwayland-satellite
        hyprpolkitagent
        mako
        fuzzel
        waybar
        kitty
        swww
        swaybg
        swaylock
        imagemagick
        waypaper

        grim
        slurp
        pavucontrol
        brightnessctl
        wl-clipboard
        wf-recorder
        satty

        nemo
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