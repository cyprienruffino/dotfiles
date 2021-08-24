#!/bin/bash

mkdir ~/.config_backups

cp ~/.bashrc ~/.config_backups/

cp bashrc ~/.bashrc

mkdir ~/.local/bin
cp -r bin ~/.local/bin/

sudo cp -r icons /usr/share/
sudo cp -r themes /usr/share/

cp wallpaper.jpg ~/.wallpaper.jpg

sudo pacman -Syy --noconfirm  wget gnome-shell firefox steam cups gnome-tweak-tool code base-devel gnome-settings

wget https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
tar xvf yay.tar.gz
cd yay
makepkg --noconfirm -si
cd ..

yay -Syy --noconfirm micro ferdi spotify jetbrains-toolbox zotero freetube texstudio albert

gsettings set org.gnome.desktop.background draw-background false
gsettings set org.gnome.desktop.background picture-uri file:///home/$USER/.wallpaper.jpg
gsettings set org.gnome.desktop.background draw-background true

sudo systemctl enable cups

echo "Setup complete, reboot recommended and remember to sync extensions/tweaks"
