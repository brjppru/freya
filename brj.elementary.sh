#!/bin/sh

#
# the brj elementary bolgenos script ;-)
# http://brj.pp.ru/
#


# fast-apt
sudo add-apt-repository -y ppa:saiarcot895/myppa
sudo apt-get -y update
sudo apt-get -y install apt-fast

# req to install
sudo apt-fast -y install aptitude cowsay curl dpkg aria2

# auto repos
sudo add-apt-repository -y ppa:mc3man/trusty-media
sudo add-apt-repository -y ppa:mpstark/elementary-tweaks-daily
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:quiterss/quiterss
sudo add-apt-repository -y ppa:keepassx/daily
sudo add-apt-repository -y ppa:atareao/atareao
sudo add-apt-repository -y ppa:atareao/telegram
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo add-apt-repository -y ppa:costales/anoise
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2
sudo add-apt-repository -y ppa:me-davidsansome/clementine
sudo add-apt-repository -y ppa:linrunner/tlp
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
#sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:transmissionbt/ppa
sudo add-apt-repository -y ppa:videolan/stable-daily
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo add-apt-repository -y ppa:osmoma/audio-recorder
sudo add-apt-repository -y ppa:pidgin-developers/ppa
sudo apt-add-repository -y ppa:purple-vk-plugin/dev
sudo add-apt-repository -y ppa:birdie-team/stable

# no ppa reps
sudo apt-add-repository -y "deb http://archive.canonical.com/ubuntu/ precise partner"
sudo apt-add-repository -y "deb http://www.tataranovich.com/debian utopic nightly"
sudo apt-add-repository -y "deb http://deb.2gis.ru/ trusty non-free"
sudo apt-add-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"

# receive keys
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com `sudo aptitude update 2>&1 | grep -o '[0-9A-Z]\{16\}$' | xargs`

# clean up

# Clean-up System
sudo apt-get -y purge midori-granite noise software-center bluez modemmanager scratch-text-editor audience

doupme() {

    cowsay -d "update"     && sudo apt-get -y update
    cowsay -d "dist-up"    && sudo apt-get -y dist-upgrade
    cowsay -d "force deps" && sudo apt-get -y -f install
    cowsay -d "remove"	   && sudo apt-get -y autoremove
    cowsay -d "autoclean"  && sudo apt-get -y autoclean
    cowsay -d "clean"      && sudo apt-get -y clean

}

#
# begin fucking magic ;-)
#

doupme

# russifity
sudo apt-get install -y language-pack-en language-pack-ru

# big kernel up ;-)
sudo apt-get install -y --install-recommends linux-generic-lts-utopic xserver-xorg-lts-utopic libgl1-mesa-glx-lts-utopic libegl1-mesa-drivers-lts-utopic
sudo apt-get install -y linux-firmware-nonfree dkms

# install my own
sudo apt-get install -y guake doublecmd-gtk xournal powertop preload smartmontools ethtool qt4-qtconfig dconf-tools
sudo apt-get install -y molly-guard openssh-server htop firefox uget mc preload 
sudo apt-get install -y unace unrar zip unzip xz-utils p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller
sudo apt-get install -y tshark furiusisomount sshfs curlftpfs
#adobe-flashplugin

# 2gis
sudo apt-get install -y 2gis

# y-ppa 
sudo apt-get install -y y-ppa-manager

# git
sudo apt-get -y install git

# winehq
sudo apt-get -y install wine

# rss
sudo apt-get install -y quiterss

# kepasa
sudo apt-get install -y keepassx

# rdp
sudo apt-get install -y remmina remmina-plugin-rdp

# pushbullet
sudo apt-get install -y pushbullet-indicator

# libreoffice
sudo apt-get install -y libreoffice libreoffice-gtk libreoffice-pdfimport libreoffice-avmedia-backend-gstreamer libreoffice-style-sifr libreoffice-lightproof-ru-ru libreoffice-help-ru libreoffice-l10n-ru 

# anoise
sudo apt-get -y install anoise anoise-community-extension1

# tweaker
sudo apt-get install -y elementary-tweaks

# sublime2
sudo apt-get install -y sublime-text

# codec
sudo apt-get install -y ubuntu-restricted-extras ffmpeg x264 gstreamer0.10-ffmpeg libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh
sudo apt-get -y install vlc browser-plugin-vlc

# install the Clementine Music Player
sudo apt-get install -y clementine

# skype
#sudo apt-get install -y gtk2-engines-murrine:i386 gtk2-engines-pixbuf:i386 sni-qt:i386
sudo apt-get install -y skype

# tlp
sudo apt-get install -y tlp tlp-rdw
sudo tlp start

# install gimp
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

# install transmisson
sudo apt-get -y install transmission minissdpd natpmp-utils

# install audio-recorder
sudo apt-get -y install audio-recorder

# telegramm 
sudo apt-get -y install telegram

# pidgin
sudo apt-get -y install pidgin purple-vk-plugin pidgin-plugin-pack

#Install Java 7
#sudo apt-get install -y oracle-java7-installer

# install chrome stable
sudo apt-get install -y google-chrome-stable
sudo rm /etc/apt/sources.list.d/google-chrome.list  

# birdie
sudo apt-get -y install birdie

# big clean up

#Remove some Switchboard Plug's
sudo rm -rf /usr/lib/plugs/GnomeCC/gnomecc-bluetooth.plug
sudo rm -rf /usr/lib/plugs/GnomeCC/gnomecc-wacom.plug

#Enable all Startup Applications
cd /etc/xdg/autostart
sudo sed --in-place 's/NoDisplay=true/NoDisplay=false/g' *.desktop

doupme

#
# the end, the brj elementary bolgenos script ;-)
# http://brj.pp.ru/
#
