{ config, lib, pkgs, var, ... }: {
    environment.systemPackages = with pkgs; [
        rustc
        cargo
        rustfmt
        clippy
        rust-analyzer

        docker
        docker-compose
    ];

    programs.git = {
        enable = true;
        # user.name = config.var.name;
        # user.email = config.var.gitEmail;

        # extraConfig = {
        #     init.defaultBranch = "main";
        #     pull.rebase = true;
        #     push.autoSetupRemote = true;
        #     core.editor = "vim";
        #     credential.helper = "store";
        #     alias = {
        #         hist = "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short";
        #     };
        # };
    };
}
