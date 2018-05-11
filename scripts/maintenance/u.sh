#!/bin/bash

apt update -y
apt full-upgrade -y
apt clean
apt autoremove --purge -y
rm -rf ~/.local/share/Trash/*
