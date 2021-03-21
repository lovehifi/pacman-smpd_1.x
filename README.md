### Hi Audiophile 👋


# Pacman (ArchLinux package manager) to SMPD 1.0x setup instructions

###### Step by Step

#1./ **Download and compile pacman**
> wget https://sources.archlinux.org/other/pacman/pacman-5.2.2.tar.gz
> 
> tar -xf pacman-5.2.2.tar.gz
> 
> cd /root/pacman-5.2.2
>
> ./configure --prefix=/usr --libdir=/lib
> 
> make
> 
> make install
> 
> 
####
####
#2./ **Setup and Config**
> wget http://mirror.archlinuxarm.org/aarch64/core/pacman-5.2.2-2-aarch64.pkg.tar.xz
> 
> tar -xf pacman-5.2.2-2-aarch64.pkg.tar.xz --overwrite -C /
> 
> wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/varlibpacman.tar.gz
> 
> tar -xf varlibpacman.tar.gz --overwrite -C /
>
> wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/pacmand.tar.gz
>
> tar -xf pacmand.tar.gz --overwrite -C /
>
> wget https://raw.githubusercontent.com/lovehifi/pacman-smpd_1.x/main/pacmanconf.tar.gz
>
> tar -xf pacmanconf.tar.gz --overwrite -C /
>

####
####
#3./ **Test**
> pacman -h
> pacman -h
####
####

Just temp backup: pacman -Syy >> pacman -Syu --ignore filesystem,bash >> pacman -S bash >> pacman -Su

