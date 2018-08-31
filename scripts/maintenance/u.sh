#!/bin/bash

/usr/bin/dpkg --configure -a
rm /var/lib/apt/lists/* -vf
/usr/bin/apt --yes --assume-yes update
/usr/bin/apt --yes --assume-yes full-upgrade
/usr/bin/apt install -y -f
/usr/bin/apt --yes --assume-yes autoremove --purge
/usr/bin/apt clean
rm -rf ~/.local/share/Trash/*
