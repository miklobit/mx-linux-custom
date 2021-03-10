#!/bin/sh
# custom mx linux 19.3 configuration
# run as:  sudo mx-19.3.sh -y
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
wget -qO - https://eddie.website/repository/keys/eddie_maintainer_gpg.key|sudo apt-key add -
echo "deb http://eddie.website/repository/apt stable main" | sudo tee /etc/apt/sources.list.d/eddie.website.list
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
mv signal-desktop-keyring.gpg /usr/share/keyrings/
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
apt-get update $1
apt-get upgrade $1
apt-get install $1 net-tools
apt-get install $1 telegram
apt-get install $1 signal-desktop
apt-get install $1 veracrypt
apt-get install $1 truecrypt
apt-get install $1 cryptomator
apt-get install $1 eddie-ui
apt-get install $1 flameshot
apt-get install $1 -t buster-backports inkscape
apt-get install $1 virtualbox virtualbox-dkms virtualbox-ext-pack virtualbox-guest-additions-iso
apt-get install $1 obs-studio obs-plugins libobs0
apt-get install $1 python3-pip
pip3 install numpy
apt-get install $1 brave-browser
#3d mouse
wget http://ftp.pl.debian.org/debian/pool/main/s/spacenavd/spacenavd_0.7.1-1_amd64.deb
apt-get install $1 ./spacenavd_0.7.1-1_amd64.deb
apt-get install $1 solaar
# FFmpeg frontend
apt-get install $1 winff
apt-get install $1 kdenlive kdenlive-data frei0r-plugins breeze-icon-theme
apt-get install $1 scrcpy
wget https://github.com/turtl/desktop/releases/download/v0.7.2.5/turtl-0.7.2.5-linux64.tar.bz2
tar -xvf turtl-0.7.2.5-linux64.tar.bz2
cd turtl-linux64
sudo ./install.sh
# run /opt/turtl/turtl
