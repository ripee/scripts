#!/bin/bash

mkdir -p ~/android/lineage-19.1
cd ~/android/lineage-19.1
repo init --depth=1 -u https://github.com/LineageOS/android.git -b lineage-19.1
repo sync -c --force-sync --no-clone-bundle --no-tags
mkdir -p .repo/local_manifests
cd
