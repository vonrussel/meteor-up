#!/bin/bash

# Remove the lock
set +e
sudo rm /var/lib/dpkg/lock > /dev/null
sudo rm /var/cache/apt/archives/lock > /dev/null  
sudo dpkg --configure -a
set -e

# Install GraphicsMagick
sudo add-apt-repository ppa:dhor/myway -y > /dev/null
sudo apt-get update > /dev/null
sudo apt-get install graphicsmagick > /dev/null