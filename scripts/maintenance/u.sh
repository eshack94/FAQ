#!/bin/bash

/usr/bin/dpkg --configure -a
/usr/bin/apt --yes --assume-yes update
/usr/bin/apt --yes --assume-yes full-upgrade
/usr/bin/apt install -y -f
/usr/bin/apt --yes --assume-yes autoremove --purge
/usr/bin/apt clean
/usr/bin/dpkg -l | grep '^rc' | awk '{print $2}' | xargs /usr/bin/apt --yes --assume-yes purge
rm -rf ~/.cache/thumbnails/*
rm -rf ~/.local/share/Trash/*
