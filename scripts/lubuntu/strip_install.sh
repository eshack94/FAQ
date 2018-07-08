#!/bin/bash

apt -y purge *transmission* 
apt -y purge simple-scan 
apt -y purge *pidgin* 
apt -y purge *guvcview* 
apt -y purge *abiword* 
apt -y purge *gnumeric* 
apt -y purge *xfburn* 
apt -y purge mtpaint 
apt -y purge *sylpheed* 
apt -y purge *evince* 
apt -y purge *hardinfo* 
apt -y purge lubuntu-software-center 
apt -y purge xpad 
apt -y purge usb-creator-gtk 
apt -y purge blueman 

apt -y autoremove 
apt clean 

apt -y update 
apt -y full-upgrade 
apt -y autoremove 
apt clean 
