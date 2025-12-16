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
    ueberzugpp
    mpv
    imagemagick
    ffmpegthumbnailer
    bat
    lazygit
    htop
    iputils

    usbutils
    pciutils
    lshw
    drm_info

    # multimedia related pkgs
    swayimg
    mpv
    vlc
    ffmpeg
    v4l-utils
    cheese
    libcamera
  ];
}
