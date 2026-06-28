{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [

	# Shell
		zsh

	# CLI applications
		micro
		btop
		curl
		wget
		git
		tmux
		catimg

	# Container software
		distrobox

	# General software
		spotify
		vesktop

	# Gaming & Windows
		wine
		dosbox

  ];

	# Steam configuration
		programs.steam = {
		enable = true;
		remotePlay.openFirewall = true; 
		dedicatedServer.openFirewall = true; 
		localNetworkGameTransfers.openFirewall = true; 
	};

	# Enable containers
		virtualisation.containers.enable = true;
		virtualisation.podman = {
		enable = true;
	};
			
	#Firefox
		programs.firefox.enable = true;
}
