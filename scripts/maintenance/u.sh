#!/bin/bash

apt -qqq update
apt -qqq full-upgrade
apt -qqq autoremove --purge
apt clean
rm -rf ~/.local/share/Trash/*
