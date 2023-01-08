#!/bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y remove openjdk-* icedtea-* icedtea6-*
sudo apt -y install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop openjdk-8-jdk pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
sudo apt -y autoremove
mkdir ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
ccache -M 100G
echo 'export ANDROID_COMPILE_WITH_JACK=false' >> ~/.bashrc
echo 'export CCACHE_EXEC=/usr/bin/ccache' >> ~/.bashrc
echo 'export LANG=C' >> ~/.bashrc
echo 'export PATH=~/bin:$PATH' >> ~/.bashrc
echo 'export USE_CCACHE=1' >> ~/.bashrc
echo 'cd' >> ~/.bashrc
. ~/.bashrc
mkdir ~/android
