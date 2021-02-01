sudo apt update

sudo apt install -y zsh
sudo usermod -s `which zsh` $(whoami)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# copy zshrc
curl https://raw.githubusercontent.com/pawtul/dotfiles/master/.zshrc > $HOME/.zshrc


# spaceship prompt
export ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
