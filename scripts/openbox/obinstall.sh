#!/bin/bash

hme="/home/$USER/.config"
bcg="/usr/share/backgrounds"
wlp="/home/$USER/wallpaper"
lib="/var/lib/openbox"
xll="/etc/X11/openbox"

apt update -y
add-apt-repository ppa:mc3man/mpv-tests
apt update -y
apt install -y openbox obconf obmenu feh plank lxappearance lxtask gconf-editor pcmanfm leafpad pulseaudio pavucontrol mpv 
# xinit (x-server for guis; startx in terminal starts ob's "gui"), nitrogen ( nitrogen --retore &) (alternative to wallpapers' feh), network-manager, terminator (default is xterm) (just in case gnome-terminal is removed on purging ubuntu/gnome), xcompmgr (required for docky for intellihide. if plank requires xcompmgr for intellihide, then to install), 
mkdir -p "$hme/openbox"
mkdir -p "$wlp"
mkdir -p "$hme/mpv"
cd /home/$USER/.config/mpv/
wget -O input.conf https://raw.githubusercontent.com/brandleesee/blc/master/backups/mpv/input.conf
cd /home/$USER/
# cp "$lib/debian-menu.xml" "$hme/debian-menu.xml"
# cp "$xll/menu.xml" "$hme/openbox"
# cp "$xll/rc.xml" "$hme/openbox"
cp "$bcg/1.jpg" "$wlp"
cp "$bcg/2.jpg" "$wlp"
feh --bg-scale "$wlp/2.jpg"




# Checks and creates autostart file
	if [ -e "$ast/autostart" ]; then
	  sudo rm -rf "$ast/autostart"
  else [ -e "$ast/autostart.sh" ]; then
	  sudo rm -rf "$ast/autostart.sh"
  fi
	echo "sh ~/.fehbg &" > "$ast/autostart.sh"
	{
	  echo "docky &"
	  echo "xcompmgr &"
	} >> "$ast/autostart.sh"
  
  
  # Autologin
  # 
  
  # Restart Openbox
  openbox --reconfigure
