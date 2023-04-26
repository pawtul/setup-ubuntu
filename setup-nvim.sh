sudo apt update

sudo apt install -y neovim

config_home=~/.config/nvim
if ! [[ -d $config_home ]]; then
    echo "creating $config_home"
    mkdir $config_home
fi
curl -fLo ${config_home}/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl https://raw.githubusercontent.com/pawtul/dotfiles/master/nvimrc > $config_home/init.vim
pip install --upgrade pynvim

nvim -c PlugInstall

# setup my snippets
git clone https://github.com/pawtul/codesnippets.git ~/.vim/snippets
