#!/bin/bash

apt -qq update
apt -qq full-upgrade
apt clean
apt -qq autoremove --purge
rm -rf ~/.local/share/Trash/*
