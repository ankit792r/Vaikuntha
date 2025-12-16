{ config, pkgs, inputs, var, ... }: {
    imports = [
        ./env.nix
        ../../packages/development.nix
        ../../packages/office.nix
    ];

    environment.systemPackages = with pkgs; [
        home-manager
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
        waypaper
        wlogout

        grim
        slurp
        pavucontrol
        brightnessctl
        wlsunset
        wl-clipboard
        wf-recorder
        satty

        xfce.thunar
        powertop
        acpi
        wayland-utils

        fastfetch
        neovim
        tmux
    ];
}
