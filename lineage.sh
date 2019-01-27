#!/bin/bash

mkdir -p ~/android/lineage
cd ~/android/lineage
repo init --depth=1 -u git://github.com/LineageOS/android.git -b lineage-16.0
repo sync -c --force-sync --no-clone-bundle --no-tags
repo init --depth=1 -u git://github.com/LineageOS/android.git -b lineage-15.1
repo sync -c --force-sync --no-clone-bundle --no-tags
mkdir -p .repo/local_manifests
cd ~
