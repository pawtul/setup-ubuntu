source common-config.sh


sudo apt update

sudo apt install -y docker.io
sudo systemctl disable docker

if ! [[ -d $HOME/bin ]]; then
    mkdir $HOME/bin
fi

sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o $HOME/bin/docker-compose

sudo chmod +x $HOME/bin/docker-compose
