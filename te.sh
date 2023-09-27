#!/bin/busybox ash

. /etc/init.d/tc-functions
. /var/www/cgi-bin/pcp-functions

useBusybox
TARGET=`cat /etc/sysconfig/backup_device`
tce-load -i ca-certificates.tcz
tce-load -wi avahi.tcz libavahi.tcz ipv6-netfilter-5.15.35-pcpCore-v7.tcz
cd ~
wget https://raw.githubusercontent.com/lovehifi/tidalconnect-picore/main/Tidal-Connect-Armv7.tar.gz
tar -xzvf Tidal-Connect-Armv7.tar.gz --overwrite -C /

cd /mnt/$TARGET/optional
echo "Download"
wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/ifiLib1.tcz
wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/ifiLib2.tcz
wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/ifiLib3.tcz
wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/ifiLib4.tcz


sed -i '/ldconfig/d' /opt/bootlocal.sh
echo ldconfig >>/opt/bootlocal.sh
echo "Rebooting..."
sleep 3

# wget -O - https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/te.sh | sh
pcp br



