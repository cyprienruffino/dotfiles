usermod --shell /usr/bin/zsh cyprien
mkdir ~/.config_backups

cp ~/.zshrc ~/.config_backups/
cp .zshrc ~/.zshrc

cp ~/.gitconfig ~/.config_backups/
cp .gitconfig ~/.gitconfig

mkdir ~/.local/
cp -r bin res ~/.local/

sudo cp -r icons /usr/share/
sudo cp -r themes /usr/share/

cp wallpaper.jpg ~/.wallpaper.jpg

gsettings set org.gnome.desktop.background draw-background false
gsettings set org.gnome.desktop.background picture-uri file:///home/$USER/.wallpaper.jpg
gsettings set org.gnome.desktop.background draw-background true

sudo systemctl enable cups

git config --global user.name "Cyprien Ruffino"
git config --global user.mail "ruffino.cyprien@protonmail.com"
git config --global credential.helper cache

echo "Setup complete, reboot recommended and remember to sync extensions/tweaks"
