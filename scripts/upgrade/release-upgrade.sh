#!/bin/bash

apt update -y
apt full-upgrade -y
apt clean
apt autoremove -y
apt purge -y

{
  if [[ $(dpkg -s update-manager-core) == "install ok installed" ]]; then
    do-release-upgrade
  else
    apt install update-manager-core -y
    do-release-upgrade
  fi
}

