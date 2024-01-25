#!/bin/bash

sudo pacman -Syy --noconfirm zsh wget firefox cups gnome-tweak-tool code base-devel wmctrl pacman-contrib bluez-utils dust bat exa

wget https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
tar xvf yay.tar.gz
cd yay
makepkg --noconfirm -si
cd ..

yay -Syy --noconfirm micro spotify jetbrains-toolbox lutris ulauncher obsidian ferdium freetube chrome-gnome-shell plank htop tilda gnome-shell-extension-openweather-git gnome-shell-extension-dash-to-plank gnome-shell-extension-pixel-saver-git gnome-shell-extension-hidetopbar-git

sudo bash ./setup.sh
