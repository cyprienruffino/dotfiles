usermod --shell /usr/bin/zsh cyprien
mkdir -p ~/.config_backups

cp ~/.zshrc ~/.config_backups/
cp .zshrc ~/.zshrc

cp ~/.gitconfig ~/.config_backups/
cp .gitconfig ~/.gitconfig

mkdir -p ~/.local/
cp -r bin res ~/.local/

sudo cp -r icons /usr/share/
sudo cp -r themes /usr/share/

cp wallpaper.jpg ~/.wallpaper.jpg

kwriteconfig6 --file plasma-org.kde.plasma.desktop-appletsrc --group Containments --group 1 --group Wallpaper --group org.kde.image --group General --key Image "file:///home/$USER/.wallpaper.jpg"
qdbus6 org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript 'var allDesktops = desktops();for (i=0;i<allDesktops.length;i++) {d = allDesktops[i];d.wallpaperPlugin = "org.kde.image";d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General");d.writeConfig("Image", "file:///home/'+ env['USER'] + '/.wallpaper.jpg");}'

sudo systemctl enable --now cups
systemctl enable --user --now ulauncher
git config --global user.name "Cyprien Ruffino"
git config --global user.mail "ruffino.cyprien@protonmail.com"
git config --global credential.helper cache

echo "Setup complete, reboot recommended and remember to sync extensions/tweaks"

python -m venv ~/.default
source ~/.default/bin/activate
pip install -r requirements.txt
