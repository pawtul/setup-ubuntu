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
if ! [[ -d ~/bin ]]; then
    mkdir ~/bin
fi
wget "https://github.com/neovim/neovim/releases/download/${version}/nvim-linux-x86_64.tar.gz" -P /tmp/
tar xf /tmp/nvim-linux-x86_64.tar.gz -C /tmp/
cp /tmp/nvim-linux-x86_64/bin/nvim ~/bin


