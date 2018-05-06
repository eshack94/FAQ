#!/bin/bash

apt-get update -y
apt-get dist-upgrade -y
apt-get clean
apt-get autoremove -y
apt-get purge -y
