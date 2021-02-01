sudo apt update

sudo apt install -y gnome-session gdm3 gnome-shell chrome-gnome-shell


if ! [[ -d $HOME/.local/share/gnome-shell/extensions ]]; then
    mkdir -p $HOME/.local/share/gnome-shell/extensions
fi

# put window
wget https://github.com/negesti/gnome-shell-extensions-negesti/releases/download/v32/putWindow@clemens.lab21.org.zip
mv putWindow@clemens.lab21.org.zip $HOME/.local/share/gnome-shell/extensions
unzip $HOME/.local/share/gnome-shell/extensions/putWindow@clemens.lab21.org.zip -d $HOME/.local/share/gnome-shell/extensions/putWindow@clemens.lab21.org
rm $HOME/.local/share/gnome-shell/extensions/putWindow@clemens.lab21.org.zip

# dash-to-dock
wget https://github.com/micheleg/dash-to-dock/archive/ubuntu-dock-68ubuntu20.10.1.zip
mv ubuntu-dock-68ubuntu20.10.1.zip $HOME/.local/share/gnome-shell/extensions
unzip $HOME/.local/share/gnome-shell/extensions/ubuntu-dock-68ubuntu20.10.1.zip $HOME/.local/share/gnome-shell/extensions/ubuntu-dock-68ubuntu20.10.1
rm $HOME/.local/share/gnome-shell/extensions/ubuntu-dock-68ubuntu20.10.1.zip
