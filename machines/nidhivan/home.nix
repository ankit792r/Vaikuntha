{ config, pkgs, inputs, var, ... }: {
    imports = [
        ./env.nix
        ../../packages/development.nix
        ../../packages/office.nix
    ];

    home.username = var.username;
    home.homeDirectory = "/home/${var.username}";
    home.stateVersion = var.homeManagerVersion;

    home.sessionPath = [ "$HOME/Vaikuntha/scripts/bin" ];

    home.packages = with pkgs; [
        xwayland-satellite
        hyprpolkitagent
        mako

        rofi
        fuzzel

        waybar
        alacritty
        kitty
        swww
        swaybg
        swaylock-effects
        imagemagick
        waypaper
        wlogout

        grim
        slurp
        pavucontrol
        brightnessctl
        wl-clipboard
        wf-recorder
        satty

        xfce.thunar
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
