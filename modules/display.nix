{ config, lib, pkgs, ... }: {
    services.displayManager = {
        autoLogin.enable = false;
        sddm = {
            enable = true;
            wayland.enable = true;
            settings = {
                General = {
                    Relogin = false;
                    EnableAvatars = false;
                };
                Theme = {
                    Current = "breeze";
                    CursorTheme = "Adwaita";
                    CursorSize = "24";
                };
            };
        };
    };

    services.xserver.enable = false;
}
