#!/bin/bash

apt-get -y update 
apt-get -y dist-upgrade 
apt-get -y autoremove 
apt-get -y purge 
apt-get clean 
