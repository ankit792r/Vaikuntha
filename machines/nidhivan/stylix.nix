{ pkgs, ... }: {
    stylix.autoEnable = true;
    # Base16 color scheme - you can change this to any base16 theme
    # Popular options: "gruvbox-dark-hard", "nord", "dracula", "tokyo-night-dark", "catppuccin-mocha"
    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";

    stylix.cursor = {
        package = pkgs.bibata-cursors;
        name = "Bibata-Modern-Ice";
        size = 24;
    };

    stylix.fonts = {
        monospace = {
            package = pkgs.nerd-fonts.jetbrains-mono;
            name = "JetBrainsMono Nerd Font Mono";
        };
        sansSerif = {
            package = pkgs.noto-fonts;
            name = "Noto Sans";
        };
        serif = {
            package = pkgs.noto-fonts;
            name = "Noto Serif";
        };
        sizes = {
            applications = 12;
            terminal = 14;
            desktop = 12;
            popups = 12;
        };
    };

    stylix.targets = {
        gtk.enable = true;
        qt.enable = true;
    };
}