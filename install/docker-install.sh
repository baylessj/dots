#! /bin/bash

DISTRO=$(hostnamectl | awk 'NR==6 {print $3}')
if [ "$DISTRO" == "Arch" ]; then
	# use pacman to install docker
	sudo pacman -Sy docker
	sudo systemctl enable docker.service
fi
