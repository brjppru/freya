#!/bin/sh

#
# the brj elementary bolgenos script ;-)
# http://brj.pp.ru/
#

exit 0

sudo apt-get -y update

# first install fast-apt
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
#sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
#sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:transmissionbt/ppa
sudo add-apt-repository -y ppa:videolan/stable-daily
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo add-apt-repository -y ppa:osmoma/audio-recorder
sudo add-apt-repository -y ppa:pidgin-developers/ppa
sudo apt-add-repository -y ppa:purple-vk-plugin/dev
sudo add-apt-repository -y ppa:birdie-team/stable
sudo add-apt-repository -y ppa:yorba/ppa

# no ppa reps
sudo apt-add-repository -y "deb http://archive.canonical.com/ubuntu/ precise partner"
sudo apt-add-repository -y "deb http://www.tataranovich.com/debian utopic nightly"
sudo apt-add-repository -y "deb http://deb.2gis.ru/ trusty non-free"
sudo apt-add-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"

# receive keys
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com `sudo aptitude update 2>&1 | grep -o '[0-9A-Z]\{16\}$' | xargs`

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
sudo apt-fast install -y language-pack-en language-pack-ru

# big kernel up ;-)
sudo apt-fast install -y --install-recommends linux-generic-lts-utopic xserver-xorg-lts-utopic libgl1-mesa-glx-lts-utopic libegl1-mesa-drivers-lts-utopic linux-firmware-nonfree dkms

# install my own
sudo apt-fast install -y gdebi guake glipper doublecmd-gtk xournal powertop preload smartmontools ethtool qt4-qtconfig dconf-tools
sudo apt-fast install -y molly-guard openssh-server htop firefox uget mc preload gpicview gthumb 
sudo apt-fast install -y unace unrar zip unzip xz-utils p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller
sudo apt-fast install -y tshark sshfs curlftpfs 
#sudo apt-fast install -y adobe-flashplugin furiusisomount

# 2gis
sudo apt-fast install -y 2gis

# y-ppa 
sudo apt-fast install -y y-ppa-manager

# git
sudo apt-fast -y install git

# winehq
sudo apt-fast -y install wine

# rss
sudo apt-fast install -y quiterss

# kepasa
sudo apt-fast install -y keepassx

# rdp
sudo apt-fast install -y remmina remmina-plugin-rdp

# pushbullet
sudo apt-fast install -y pushbullet-indicator

# libreoffice
sudo apt-fast install -y libreoffice libreoffice-gtk libreoffice-pdfimport libreoffice-avmedia-backend-gstreamer libreoffice-style-sifr libreoffice-lightproof-ru-ru libreoffice-help-ru libreoffice-l10n-ru 

# anoise
sudo apt-fast -y install anoise anoise-community-extension1

# tweaker
sudo apt-fast install -y elementary-tweaks

# sublime2
sudo apt-fast install -y sublime-text

# codec
sudo apt-fast install -y ubuntu-restricted-extras ffmpeg x264 gstreamer0.10-ffmpeg libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh
sudo apt-fast -y install vlc browser-plugin-vlc

# install the Clementine Music Player
sudo apt-fast install -y clementine

# skype
#sudo apt-fast install -y gtk2-engines-murrine:i386 gtk2-engines-pixbuf:i386 sni-qt:i386
sudo apt-fast install -y skype

# tlp
sudo apt-fast install -y tlp tlp-rdw
sudo tlp start

# install gimp
#sudo apt-fast install -y gimp gimp-data gimp-plugin-registry gimp-data-extras
sudo apt-fast install -y mypaint

# install transmisson
sudo apt-fast -y install transmission minissdpd natpmp-utils

# install audio-recorder
sudo apt-fast -y install audio-recorder

# telegramm 
sudo apt-fast -y install telegram

# pidgin
sudo apt-fast -y install pidgin purple-vk-plugin pidgin-plugin-pack

#Install Java 7
#sudo apt-fast install -y oracle-java7-installer

# install chrome stable, 
# uninstall repo -> chrome has add one after install
sudo apt-fast install -y google-chrome-stable
#sudo rm /etc/apt/sources.list.d/google-chrome.list  
sudo apt-add-repository -y -r "deb http://dl.google.com/linux/chrome/deb/ stable main"

# birdie
sudo apt-fast -y install birdie

# geary, 
# override ppa - broken need fix with priority
# sudo apt-get install geary=0.10.0-1~trusty1

# big clean up

# clean up

# degarbage system
sudo apt-get -y purge midori-granite noise software-center bluez modemmanager scratch-text-editor 
sudo apt-get -y purge pantheon-photos* audience

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
