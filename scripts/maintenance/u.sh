#!/bin/bash

apt -qq update
apt -qq full-upgrade
apt -qq autoremove --purge
apt clean
rm -rf ~/.local/share/Trash/*
