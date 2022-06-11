sudo apt update

sudo apt install -y tmux

curl https://raw.githubusercontent.com/pawtul/dotfiles/master/tmux.conf > $HOME/.tmux.conf

if ! [[ -d $HOME/.tmux/plugins ]]; then
    mkdir -p $HOME/.tmux/plugins
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

