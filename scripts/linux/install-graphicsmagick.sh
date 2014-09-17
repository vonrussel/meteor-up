#!/bin/bash

# Remove the lock
set +e
sudo rm /var/lib/dpkg/lock > /dev/null
sudo rm /var/cache/apt/archives/lock > /dev/null  
sudo dpkg --configure -a
set -e

# Install GraphicsMagick
cd /usr/local/share/
sudo wget http://78.108.103.11/MIRROR/ftp/GraphicsMagick/1.3/GraphicsMagick-1.3.20.tar.bz2 > /dev/null
sudo tar xjf GraphicsMagick-1.3.20.tar.bz2  > /dev/null
cd GraphicsMagick-1.3.20
sudo make
sudo make install