#!/bin/bash

sudo pacman -Syy --noconfirm zsh wget gnome-shell firefox cups gnome-tweak-tool code base-devel wmctrl

wget https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
tar xvf yay.tar.gz
cd yay
makepkg --noconfirm -si
cd ..

yay -Syy --noconfirm micro spotify jetbrains-toolbox lutris albert obsidian ferdi freetube chrome-gnome-shell

sudo bash ./setup.sh
