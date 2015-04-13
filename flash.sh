#!/bin/sh

exit 0

# vdpau
sudo apt-get install libvdpau1 vdpau-va-driver
sudo mkdir /etc/adobe
sudo echo -e "EnableLinuxHWVideoDecode = 1\nOverrideGPUValidation = 1" | sudo tee /etc/adobe/mms.cfg

# Intel using the normal Intel drivers
sudo apt-get install i965-va-driver
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install libvdpau-va-gl1
sudo sh -c "echo 'export VDPAU_DRIVER=va_gl' >> /etc/profile"
sudo mkdir /etc/adobe
sudo echo -e "EnableLinuxHWVideoDecode = 1\nOverrideGPUValidation = 1" | sudo tee /etc/adobe/mms.cfg

# AMD with fglrx driver
sudo apt-get install xvba-va-driver
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install libvdpau-va-gl1
sudo sh -c "echo 'export VDPAU_DRIVER=va_gl' >> /etc/profile"
sudo mkdir /etc/adobe
sudo echo -e "EnableLinuxHWVideoDecode = 1\nOverrideGPUValidation = 1" | sudo tee /etc/adobe/mms.cfg

# AMD with open-source radeon (built-in) driver
#sudo add-apt-repository ppa:oibaf/graphics-drivers (if on Ubuntu 13.10)
#sudo apt-get install libg3dvl-mesa (if on Ubuntu 13.10)
#sudo apt-get install mesa-vdpau-drivers (if on Ubuntu 14.04)
#sudo mkdir /etc/adobe
#sudo echo -e "EnableLinuxHWVideoDecode = 1\nOverrideGPUValidation = 1" | sudo tee /etc/adobe/mms.cfg

# p.s. don't forget export VDPAU_DRIVER=va_gl" to /etc/profile
