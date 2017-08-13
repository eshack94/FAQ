#!BIN/BASH

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub
gpg --keyserver https://dl.google.com/linux/linux_signing_key.pub --recv-keys 7FAC5991
gpg --export --armor 7FAC5991 | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get -y install google-chrome-stable
