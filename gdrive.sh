#!/bin/bash

wget -O gdrive https://docs.google.com/uc?id=0B3X9GlR6EmbnWksyTEtCM0VfaFE
sudo chmod a+x gdrive
sudo install gdrive /usr/local/bin/gdrive
rm gdrive
gdrive list
