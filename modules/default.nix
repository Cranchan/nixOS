Nix

{ config, pkgs, ... }: {
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix
    ./gnome.nix
    ./zsh.nix
    ./packages.nix
  ];
}
