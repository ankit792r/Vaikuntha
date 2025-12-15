{ pkgs, ... }: {
    stylix.enable = true;
    stylix.autoEnable = true;
    # Base16 color scheme - you can change this to any base16 theme
    # Popular options: "gruvbox-dark-hard", "nord", "dracula", "tokyo-night-dark", "catppuccin-mocha"
    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";
    stylix.polarity = "dark";
    stylix.image = ../../images/devote/04.jpg;

    stylix.cursor = {
        package = pkgs.capitaine-cursors;
        name = "capitaine-cursors";
        size = 24;
    };

    stylix.fonts = {
        monospace = {
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
