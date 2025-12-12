{ pkgs, var, ... }:  {
  nixpkgs.config.allowUnfree = true;

  programs.bash.enable = true;
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    bash
    gcc
    cmake
    which
    tree
    wget
    curl
    zip
    unzip
    git
    openssl

    vim
    fzf
    ripgrep
    ranger
    lazygit
    htop
    iputils

    usbutils
    pciutils
    lshw
    drm_info

    # multimedia related pkgs
    feh
    mpv
    vlc
    ffmpeg
    v4l-utils
    cheese
    libcamera
  ];
}
