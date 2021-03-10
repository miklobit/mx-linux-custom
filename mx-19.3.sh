#!/bin/sh
# custom mx linux 19.3 configuration
apt-get install software-properties-common
apt-get update $1
echo 'deb http://ppa.launchpad.net/stefansundin/truecrypt/ubuntu xenial main' | sudo tee /etc/apt/sources.list.d/truecrypt.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xFFE1FFFFAFEC55BB
echo 'deb http://ppa.launchpad.net/atareao/telegram/ubuntu xenial main' | sudo tee /etc/apt/sources.list.d/telegram.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A3D8A366869FE2DC5FFD79C36A9653F936FD5529
echo 'deb http://ppa.launchpad.net/sebastian-stenzel/cryptomator/ubuntu xenial main' | sudo tee /etc/apt/sources.list.d/cryptomator.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CD045438B0D383A4039EA86F892C15CD130FEB9A
echo 'deb http://ppa.launchpad.net/inkscape.dev/stable/ubuntu xenial main' | sudo tee /etc/apt/sources.list.d/inkscape.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 22C4850146603F3DB0ED00479DA4BD18B9A06DE3
apt-get update $1
apt-get upgrade $1
apt-get install $1 net-tools
apt-get install $1 telegram
apt-get install $1 veracrypt
apt-get install $1 truecrypt
apt-get install $1 cryptomator
apt-get install $1 flameshot
apt-get install $1 inkscape
apt-get install $1 virtualbox
