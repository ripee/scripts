#!/bin/bash

mkdir -p ~/android/lineage
cd ~/android/lineage
## LOS16 ## dont work with lineage 16.0 and cherrypicks (descripted by ivan /local_manifests) / just use repo sync/repo init
## it compiles just fine and boots up but if you wanna setup wifi and google it constantly reboots
repo init --depth=1 -u git://github.com/LineageOS/android.git -b lineage-16.0
repo sync -c --force-sync --no-clone-bundle --no-tags
repo init --depth=1 -u git://github.com/LineageOS/android.git -b lineage-15.1
repo sync -c --force-sync --no-clone-bundle --no-tags
mkdir -p .repo/local_manifests
cd ~
