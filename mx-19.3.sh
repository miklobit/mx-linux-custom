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
#echo 'deb http://ppa.launchpad.net/inkscape.dev/stable/ubuntu xenial main' | sudo tee /etc/apt/sources.list.d/inkscape.list
#apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 22C4850146603F3DB0ED00479DA4BD18B9A06DE3
echo 'deb http://ftp.debian.org/debian buster-backports non-free contrib main' | sudo tee /etc/apt/sources.list.d/debian.list
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ buster main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-buster.list
apt-get update $1
apt-get upgrade $1
apt-get install $1 net-tools
apt-get install $1 telegram
apt-get install $1 veracrypt
apt-get install $1 truecrypt
apt-get install $1 cryptomator
apt-get install $1 flameshot
apt-get install $1 -t buster-backports inkscape
apt-get install $1 virtualbox virtualbox-dkms virtualbox-ext-pack virtualbox-guest-additions-iso
apt-get install $1 obs-studio obs-plugins libobs0
apt-get install $1 python3-pip
pip3 install numpy
apt-get install $1 brave-browser
