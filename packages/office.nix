{ pkgs, ... }:  {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnsupportedSystem = true;

  home.packages = with pkgs; [
    docker
    docker-compose
    lazydocker
    teams-for-linux

    nodejs_24
    yarn
    prettierd
    eslint_d
    vscode
    code-cursor
  ];
}
