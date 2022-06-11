sudo apt update

sudo apt install -y vim-gtk3

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl https://raw.githubusercontent.com/pawtul/dotfiles/master/vimrc > $HOME/.vimrc

vim -c PluginInstall

# setup my snippets
git clone https://github.com/pawtul/codesnippets.git ~/.vim/snippets
