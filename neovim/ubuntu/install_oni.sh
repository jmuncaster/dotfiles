#!/bin/bash
set -v
wget https://github.com/onivim/oni/releases/download/v0.3.6/Oni-0.3.6-amd64-linux.deb 
mv Oni-0.3.6-amd64-linux.deb /tmp
sudo apt install libcanberra-gtk-module
sudo dpkg -i /tmp/Oni-0.3.6-amd64-linux.deb
