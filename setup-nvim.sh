sudo apt-get install ninja-build gettext cmake curl build-essential

config_home=~/.config/nvim
if ! [[ -d $config_home ]]; then
    echo "creating $config_home"
    mkdir $config_home
fi

curl https://raw.githubusercontent.com/pawtul/dotfiles/master/init.lua > $config_home/init.lua
pip install --upgrade pynvim

# setup my snippets
if ! [[ -d ~/.vim ]]; then
    mkdir ~/.vim
fi
git clone https://github.com/pawtul/codesnippets.git ~/.vim/snippets


version=${NEOVIM_VERSION:-v0.10.4}
pushd /tmp
git clone https://github.com/neovim/neovim.git
pushd neovim
git checkout $version
make CMAKE_BUILD_TYPE=Release
sudo make install

popd
popd
