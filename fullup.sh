#! /bin/bash
# full updater (apt), written by azazazazel
if sudo apt-get update | grep -q 'can be upgraded.'; then
	upgrade=true
fi

if sudo apt-get upgrade -y | grep -q 'autoremove'; then
	autorm=true
fi

sudo apt update

if $upgrade; then
	sudo apt upgrade -y
fi

if $autorm; then
	sudo apt autoremove -y
fi

