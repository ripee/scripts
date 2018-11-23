#!/bin/bash

apt-get -y dist-upgrade
apt-get -y update
apt-get -y remove openjdk-* icedtea-* icedtea6-*
apt-get -y autoremove
apt-get -y install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop openjdk-8-jdk pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
mkdir ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
ccache -M 100G
cd ~/.jack-server
sed -i 's/jack.server.max-service=4/jack.server.max-service=1/g' config.properties
cd ~
echo 'export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx13736M"' >> ~/.bashrc
echo 'export LANG=C' >> ~/.bashrc
echo 'export PATH=~/bin:$PATH' >> ~/.bashrc
echo 'export USE_CCACHE=1' >> ~/.bashrc
echo 'export USE_NINJA=false' >> ~/.bashrc
echo 'export WITH_SU=true' >> ~/.bashrc
. ~/.bashrc
mkdir ~/android
