#!/bin/sh
# custom mx linux 19.3 configuration
apt-get install software-properties-common
apt-get update $1
echo 'deb http://ppa.launchpad.net/stefansundin/truecrypt/ubuntu xenial main' | sudo tee /etc/apt/sources.list.d/truecrypt.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xFFE1FFFFAFEC55BB
add-apt-repository $1 ppa:sebastian-stenzel/cryptomator
add-apt-repository $1 ppa:inkscape.dev/stable
add-apt-repository $1 ppa:atareao/telegram
apt-get update $1
apt-get upgrade $1
apt-get install $1 net-tools
apt-get install $1 telegram
apt-get install $1 veracrypt
apt-get install $1 truecrypt
apt-get install $1 flameshot
