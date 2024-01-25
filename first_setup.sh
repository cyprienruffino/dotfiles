#!/bin/bash

sudo pacman -Syy --noconfirm $(cat packages)

wget https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
tar xvf yay.tar.gz
cd yay
makepkg --noconfirm -si
cd ..

yay -Syy --noconfirm $(cat aur_packages)

sudo bash ./setup.sh
