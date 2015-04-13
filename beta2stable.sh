#!/bin/sh

exit 0

# turn beta to stable

sudo add-apt-repository -y --remove ppa:elementary-os/daily
sudo add-apt-repository -y ppa:elementary-os/stable

sudo apt-get -y update
sudo apt-get -y remove elementary-os-prerelease

sudo apt-get -y dist-upgrade

#reboot
