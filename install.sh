#! /bin/bash
sudo apt install vim gnome-tweak

# install brave
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# steam
curl -O https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i steam_latest.deb

# vscode
curl -O https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i $(ls code_*.deb | head -n1) # find the latest vscode download
