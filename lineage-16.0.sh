#!/bin/bash

mkdir -p ~/android/lineage-16.0
cd ~/android/lineage-16.0
repo init --depth=1 -u git://github.com/LineageOS/android.git -b lineage-16.0
repo sync -c --force-sync --no-clone-bundle --no-tags
mkdir -p .repo/local_manifests
cd
