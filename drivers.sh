#!/bin/sh

exit 0

#For fresh Nvidia Drivers
sudo add-apt-repository ppa:xorg-edgers/ppa
sudo apt-get update
sudo apt-get dist-upgrade

#For Nvidia Cards
sudo apt-get install nvidia-331

#For AMD/ATI Cards.
sudo apt-get install fglrx-installer

