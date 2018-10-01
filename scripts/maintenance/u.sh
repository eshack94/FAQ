#!/bin/bash

/usr/bin/dpkg --configure -a
sleep 1
rm /var/lib/apt/lists/* -vf
sleep 1
/usr/bin/apt --yes --assume-yes update
sleep 1
/usr/bin/apt --yes --assume-yes full-upgrade
sleep 1
/usr/bin/apt install -y -f
sleep 1
/usr/bin/apt --yes --assume-yes autoremove --purge
sleep 1
/usr/bin/apt clean
sleep 1
/usr/bin/dpkg -l | grep '^rc' | awk '{print $2}' | xargs /usr/bin/apt --yes --assume-yes purge
sleep 1
rm -rf ~/.cache/thumbnails/*
sleep 1
rm -rf ~/.local/share/Trash/*
sleep 1
rm -rf /tmp/*
sleep 1
