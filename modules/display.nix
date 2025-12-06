{ config, lib, pkgs, ... }: {
    services.displayManager = {
        autoLogin.enable = false;
        sddm = {
            enable = true;
            wayland.enable = true;
            settings = {
                General = {
                    Relogin = false;
                    defaultSession = "niri.desktop";
                    EnableAvatars = false;
                };
                Theme = {
                    Font = config.theme.fonts.main;
                    FontSize = config.theme.fonts.size;
                    
                    # Clean theme settings
                    Current = "breeze";
                    CursorTheme = "Adwaita";
                    CursorSize = "24";
                };
            };
        };
    };

    # Disable X server - using pure Wayland with niri
    services.xserver.enable = false;
}