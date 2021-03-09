#!/bin/sh
# custom mx linux 19.3 configuration
add-apt-repository $1 ppa:stefansundin/truecrypt
add-apt-repository $1 ppa:sebastian-stenzel/cryptomator
add-apt-repository $1 ppa:inkscape.dev/stable
apt-get update $1
apt-get upgrade $1
apt-get install $1 telegram-desktop
apt-get install $1 veracrypt
apt-get install $1 truecrypt
apt-get install $1 flameshot
