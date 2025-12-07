{config, lib, ...}: {
    config = {
        var = {
            name = "Ankit Prajapati";
            username = "ankit";
            gitEmail = "77499177+ankit792r@users.noreply.github.com";
            nixosVersion = "25.11";
            homeManagerVersion = "25.11";
        };
    };

    options = {
        var = lib.mkOption {
            type = lib.types.attrs;
            default = {};
        };
    };
}