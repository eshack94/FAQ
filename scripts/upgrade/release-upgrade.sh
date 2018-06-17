#!/bin/bash

apt -qq update -y
apt -qq full-upgrade -y
apt clean
apt -qq autoremove --purge
apt -qq install update-manager-core
do-release-upgrade
