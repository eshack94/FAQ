Clean Install with latest Ubuntu Gnome image

[https://wiki.ubuntu.com/UbuntuGNOME/Testing](https://wiki.ubuntu.com/UbuntuGNOME/Testing)

Check MD5Sum

` md5sum [file-name.iso] `

## Software & Updates

![](http://i.imgur.com/QlrQANr.png)

### Select Main Server

![](http://i.imgur.com/uIBqFm7.png)
**Uncheck**
* Pre-Released Updates (______-proposed)
* Unsupported Updates (______-backports)

### Remove All PPAs & DLs

![](http://i.imgur.com/mI9WY2S.png)

### Revert to Non-Propriety Drivers

![](http://i.imgur.com/LmuJRhY.png)

### Close & Reload

![](http://i.imgur.com/KzJJq5M.png)

## Terminal

### Method 1

```
sudo sed -i 's/______/devel/g' /etc/apt/sources.list
```

/_____/ is your system's codename which can be obtained by running ` lsb_release -a `

### Method 2

```
sudo nano /etc/apt/sources.list
```

![](http://i.imgur.com/i60Vy8v.png)

![](http://i.imgur.com/nU3dGZA.png)

Replace `xenial` with `devel`

![](http://i.imgur.com/yyPD0Z3.png)

![](http://i.imgur.com/oXSABlA.png)

Therefore, ` sources.list ` should read:

```
deb http://archive.ubuntu.com/ubuntu devel main restricted
deb http://archive.ubuntu.com/ubuntu devel-updates main restriced
deb http://archive.ubuntu.com/ubuntu devel universe
deb http://archive.ubuntu.com/ubuntu devel-updates universe
deb http://archive.ubuntu.com/ubuntu devel multiverse
deb http://archive.ubuntu.com/ubuntu devel-updates multiverse 
deb http://archive.ubuntu.com/ubuntu devel-security main restricted
deb http://archive.ubuntu.com/ubuntu devel-security universe
deb http://archive.ubuntu.com/ubuntu devel-security multiverse
deb http://archive.canonical.com/ubuntu devel partner
```

![](http://i.imgur.com/fFJefiQ.png)

## Last Steps

Run ` sudo apt update `

Run ` sudo apt -y full-upgrade `

Run ` sudo apt -y autoremove `

Run ` sudo apt clean `

#### [Re-Add PPAs & DLs](https://github.com/brandleesee/blc/wiki/Ubuntu-PPAs-List)
