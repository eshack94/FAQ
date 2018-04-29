#!BIN/BASH

sudo apt update -y
sudo apt full-upgrade -y
sudo apt clean
sudo apt autoremove -y
sudo apt purge -y

{
  if [[ dpkg -s update-manager-core == "install ok installed" ]]; then
    sudo do-release-upgrade
  else
    sudo apt install update-manager-core -y
    sudo do-release-upgrade
  fi
}
