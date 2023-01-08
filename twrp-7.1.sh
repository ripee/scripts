#!/bin/bash

mkdir -p ~/android/twrp-7.1
cd ~/android/twrp-7.1
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1
repo sync -c --force-sync --no-clone-bundle --no-tags
mkdir -p .repo/local_manifests
cd
