# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# spaceship theme
CUSTOM_DIR="$HOME/.oh-my-zsh/custom"
mkdir -p "$CUSTOM_DIR/themes"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$CUSTOM_DIR/themes/spaceship-prompt"
ln -s $HOME/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme $HOME/.oh-my-zsh/themes/spaceship.zsh-theme


