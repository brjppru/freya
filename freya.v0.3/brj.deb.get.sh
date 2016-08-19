#!/bin/sh

#
# the brj elementary bolgenos script for post install ;-)
# http://brj.pp.ru/
#

exit 0

doupme() {

    cowsay -d "update"  && sudo apt-get -y update
    cowsay -d "dist-up" && sudo apt-get -y dist-upgrade
    cowsay -d "force deps" && sudo apt-get -y -f install
    cowsay -d "remove"	&& sudo apt-get -y autoremove
    cowsay -d "autoclean"	&& sudo apt-get -y autoclean
    cowsay -d "clean" && sudo apt-get -y clean

}

#
# begin fucking magic ;-)
#

doupme

# deb install, no ppa :-(

mkdir -p /tmp/ppa

# fetch
curl -o /tmp/ppa/rt.deb -L https://www.rescuetime.com/installers/rescuetime_current_amd64.deb
curl -o /tmp/ppa/xm.deb -L http://www.xmind.net/xmind/downloads/xmind-linux-3.5.1.201411201906_amd64.deb
curl -o /tmp/ppa/mc.deb -L http://r.mail.ru/n183758967

# install
dpkg -i /tmp/rt.deb
dpkg -i /tmp/xm.deb
dpkg -i /tmp/mc.deb

sudo apt-get -f install

# big clean up

doupme

#
# the end, the brj elementary bolgenos script ;-)
# http://brj.pp.ru/
#
