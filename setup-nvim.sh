sudo apt-get install ninja-build gettext cmake curl build-essential

config_home=~/.config/nvim
if ! [[ -d $config_home ]]; then
    echo "creating $config_home"
    mkdir $config_home
fi

curl https://raw.githubusercontent.com/pawtul/dotfiles/master/init.lua > $config_home/init.lua
curl https://raw.githubusercontent.com/pawtul/dotfiles/master/coc-settings.json > $config_home/coc-settings.json
pip install --upgrade pynvim

# setup my snippets
if [[ ! -d ~/.vim ]]; then
    mkdir ~/.vim
fi
git clone https://github.com/pawtul/codesnippets.git ~/.vim/snippets


pushd /tmp

wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.appimage
chmod +x nvim-linux-x86_64.appimage
cp nvim-linux-x86_64.appimage /usr/bin/nvim

popd
