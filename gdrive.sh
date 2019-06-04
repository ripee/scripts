#!/bin/bash

wget https://docs.google.com/uc?id=0B3X9GlR6EmbnWksyTEtCM0VfaFE&export=download
mv uc\?id\=0B3X9GlR6EmbnWksyTEtCM0VfaFE gdrive
sudo chmod a+x gdrive
sudo install gdrive /usr/local/bin/gdrive
gdrive list
