#!/bin/sh

#
# the brj elementary bolgenos script ;-)
#

doupme() {

echo update is here
#sudo apt-get update
#sudo apt-get dist-upgrade

}

doupme

apt-get install -y molly-guard openssh-server

# big up ;-)
sudo apt-get install -y --install-recommends linux-generic-lts-utopic xserver-xorg-lts-utopic libgl1-mesa-glx-lts-utopic libegl1-mesa-drivers-lts-utopic
sudo apt-get install -y linux-firmware-nonfree
sudo apt-get install -y dkms

#Install File Compression Libs
sudo apt-get install -y unace unrar zip unzip xz-utils p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller

#Install Guake Terminal
sudo apt-get install -y guake

# need too
sudo apt-get install -y xournal powertop
sudo apt-get install -y preload
sudo apt-get install -y smartmontools ethtool

# qt4 config
sudo apt-get install -y qt4-qtconfig

# need to
sudo apt-get install -y ubuntu-tweak
sudo apt-get install -y dconf-tools 


# 2gis
sudo apt-add-repository -y  "deb http://deb.2gis.ru/ trusty non-free"
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 69ECCC891636CC92
gpg --armor --export 69ECCC891636CC92 | sudo apt-key add -
doupme
sudo apt-get install 2gis

# y-ppa 
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
doupme
sudo apt-get install -y y-ppa-manager

# git
sudo add-apt-repository -y ppa:git-core/ppa
doupme
sudo apt-get install git

# rss
sudo add-apt-repository -y ppa:quiterss/quiterss
doupme
sudo apt-get install quiterss

# kepasa
sudo add-apt-repository -y ppa:keepassx/daily
doumpme
sudo apt-get install -y keepassx

# rdp
sudo apt-add-repository -y ppa:remmina-ppa-team/remmina-next
doupme
sudo apt-get install -y remmina remmina-plugin-rdp

# pushbullet
sudo add-apt-repository -y ppa:atareao/atareao
doupme
sudo apt-get install -y pushbullet-indicator

# libreoffice
sudo add-apt-repository -y ppa:libreoffice/ppa
doupme
sudo apt-get install -y libreoffice libreoffice-gtk libreoffice-pdfimport libreoffice-avmedia-backend-gstreamer libreoffice-style-sifr
sudo apt-get install -y libreoffice-lightproof-ru-ru libreoffice-help-ru libreoffice-l10n-ru 

# anoise
sudo add-apt-repository -y ppa:costales/anoise
doupme
sudo apt-get -y install anoise
sudo apt-get -y install anoise-community-extension1

# tweaker
sudo add-apt-repository -y ppa:mpstark/elementary-tweaks-daily
doupme
sudo apt-get install -y elementary-tweaks

# sublime2
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2
doupme
sudo apt-get install -y sublime-text

# codec
sudo apt-get install -y ubuntu-restricted-extras
sudo add-apt-repository -y ppa:mc3man/trusty-media
doupme
sudo apt-get install -y ffmpeg x264 gstreamer0.10-ffmpeg
sudo apt-get install -y libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh

#Install the Clementine Music Player
sudo add-apt-repository -y ppa:me-davidsansome/clementine
doupme
sudo apt-get install -y clementine

# skype
sudo apt-get install gtk2-engines-murrine:i386 gtk2-engines-pixbuf:i386
sudo apt-get install sni-qt:i386
sudo apt-add-repository -y "deb http://archive.canonical.com/ubuntu/ precise partner"
doupme
sudo apt-get install skype

# tlp
sudo add-apt-repository -y ppa:linrunner/tlp
doupme
sudo apt-get install -y tlp tlp-rdw
sudo tlp start

#Install Gimp
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
doupme
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

#Install Java 7
sudo add-apt-repository -y ppa:webupd8team/java
doupme
sudo apt-get install -y oracle-java7-installer

# big clean up

#Remove some Switchboard Plug's
sudo rm -rf /usr/lib/plugs/GnomeCC/gnomecc-bluetooth.plug
sudo rm -rf /usr/lib/plugs/GnomeCC/gnomecc-wacom.plug

#Enable all Startup Applications
cd /etc/xdg/autostart
sudo sed --in-place 's/NoDisplay=true/NoDisplay=false/g' *.desktop

#Clean-up System
sudo apt-get -y purge midori-granite
sudo apt-get -y purge noise
sudo apt-get -y purge software-center
sudo apt-get -y purge bluez
sudo apt-get -y purge modemmanager
sudo apt-get -f install
sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo apt-get -y clean

#For fresh Nvidia Drivers
#sudo add-apt-repository ppa:xorg-edgers/ppa
#sudo apt-get update && sudo apt-get dist-upgrade

#For Nvidia Cards
#sudo apt-get install nvidia-331

#For AMD/ATI Cards 
#sudo apt-get install fglrx-installer

