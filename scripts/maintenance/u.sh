#!/bin/bash

apt update -y
apt full-upgrade -y
apt clean
apt purge -y
apt autoremove -y
