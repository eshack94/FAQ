#!/bin/bash

apt -y update 
apt -y purge *transmission* 
apt -y purge *pidgin* 
apt -y purge *guvcview* 
apt -y purge *abiword* 
apt -y purge *gnumeric* 
apt -y purge *xfburn* 
apt -y purge *sylpheed* 
apt -y purge *evince* 
apt -y purge *hardinfo* 
apt -y purge *thunderbird*
apt -y purge lubuntu-software-center usb-creator-gtk simple-scan xpad mtpaint blueman 
apt -y install gdebi
apt -y full-upgrade 
apt -y autoremove --purge
apt clean 
