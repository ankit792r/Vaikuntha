{ pkgs, ... }:  {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnsupportedSystem = true;

  environment.systemPackages = with pkgs; [
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
