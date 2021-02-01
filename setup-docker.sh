source common-config.sh

if ! [[ $* =~ (^| )--main($| ) ]]; then
    echo "" > summary
fi

#sudo apt-get remove docker docker-engine docker.io containerd runc
