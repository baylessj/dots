#! /usr/bin/env zsh

# apt packages to install
sudo apt install -y gimp git nodejs python3-pip sphinx-common vim virtualbox zip zsh

# install brave
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# steam
# curl -O https://steamcdn-a.akamaihd.net/client/installer/steam.deb
# sudo dpkg -i steam.deb

# vscode
curl -o vscode.deb -L "https://go.microsoft.com/fwlink/?LinkID=760868"
sudo dpkg -i vscode.deb

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# spaceship theme
CUSTOM_DIR="$HOME/.oh-my-zsh/custom"
mkdir -p "$CUSTOM_DIR/themes"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$CUSTOM_DIR/themes/spaceship-prompt"
ln -s "$CUSTOM_DIR/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/themes/spaceship.zsh-theme"

# Set zsh as default shell
chsh -s $(which zsh)

# move .rc files
cp ./zsh/.zshrc $HOME/.zshrc
cp ./vim/.vimrc $HOME/.vimrc

# Vim Packages
# Onedark theme
git clone https://github.com/joshdick/onedark.vim.git "$HOME/.vim/pack/foo/opt/onedark.vim"
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
git clone https://github.com/majutsushi/tagbar.git ~/.vim/pack/plugins/start/tagbar
mkdir -p ~/.vim/pack/default/start
git clone https://github.com/sheerun/vim-polyglot ~/.vim/pack/default/start/vim-polyglot
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/pack/plugins/start/vimwiki

# First set of entered git credentials will be saved
git config --global credential.helper store

# flutter
git clone https://github.com/flutter/flutter.git ~/flutter -b dev
# Android Studio
# Need to download first from website?
initAndroidStudio() {
   tar xf ~/Downloads/android-studio.tar.gz
   cp -r ~/Downloads/android-studio ~
   yes | ~/Android/Sdk/tools/bin/sdkmanager --licenses
}
