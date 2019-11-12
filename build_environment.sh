#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y remove openjdk-* icedtea-* icedtea6-*
sudo apt-get -y install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop openjdk-8-jdk pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
mkdir ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
ccache -M 100G
echo 'export ANDROID_COMPILE_WITH_JACK=false' >> ~/.bashrc
echo 'export LANG=C' >> ~/.bashrc
echo 'export PATH=~/bin:$PATH' >> ~/.bashrc
echo 'export USE_CCACHE=1' >> ~/.bashrc
. ~/.bashrc
mkdir ~/android
