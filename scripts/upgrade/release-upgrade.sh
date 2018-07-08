#!/bin/bash

apt -y update 
apt -y full-upgrade 
apt -y autoremove --purge
apt clean
apt -y install update-manager-core
do-release-upgrade
