#!/bin/bash

if ls /root/*.tgz 1> /dev/null 2>&1; then
  for file in /root/*.tgz; do
    rm -f "$file"
  done
fi

if ls /root/*.tar.gz 1> /dev/null 2>&1; then
  for file in /root/*.tar.gz; do
    rm -f "$file"
  done
fi

echo "Download"
wget https://raw.githubusercontent.com/lovehifi/tidalconnect-picore/main/Tidal-Connect-Armv7.tar.gz
wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/ifiLib1.tcz
wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/ifiLib2.tgz
wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/ifiLib3.tgz
wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/ifiLib4.tgz

echo "Install"
