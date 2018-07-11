# Brandleesee's FAQ 

## Scripts in Home Folder

Since the terminal starts at the `Home` folder location `~`, then makes sense that any bash scripts are placed there so as to avoid changing the directory `cd` before running a script.

![](http://i.imgur.com/Un6kV5K.png)
Place script in `  Home  ` folder.

![](http://i.imgur.com/ftmgZkC.png)
Run `  bash _.sh  `

## Ubuntu & Derivatives

### Flashing a distro to USB drive 

```
ls -l /dev/sd*
cd Downloads
sudo dd if=______.iso of=/dev/sd_
```

**sda** is the hard drive OS is installed on

### Save Hardware Specs List in Downloads as *.html file

    sudo lshw -html > ~/Downloads/hardware_specs.html

### List drives & partitions

    ls -l /dev/sd

sample:

    /dev/sdb
    /dev/sdb1
    /dev/sdb2

`  sdb   ` - flash drive (external)
`  sdb1  ` - 1st partition on above flash drive
`  sdb2  ` - 2nd partition on above flash drive 

### Adding Multiple PPAs in a Bash script

```
sudo add-apt-repository -y ppa:________/________
sudo add-apt-repository -y ppa:________/________
sudo apt-get update
```

### Changing Cursors

Download the wanted theme (or ` sudo apt install ` if available in the official Ubuntu -verses).

Place in ` usr --> share --> icons ` probably using the ` sudo nautilus ` command.

Use Ubuntu/Gnome Tweak to select the desired cursor theme.

In terminal: 

    sudo update-alternatives --config x-cursor-theme

Select the corresponding number and type it --> Enter

Then:

    compiz --replace

(or log out then in).

***Troubleshooting***

There is only one alternative in link group x-cursor-theme (providing /usr/share/icons/default/index.theme): `usr/share/icons/Adwaita/cursor.theme`  

    Nothing to configure.

### Compiling from tar.gz & tar.bz2

***Check if the following are installed - one time only***

```
build-essential
checkinstall
cvs
subversion
git-core
mercurial
```

***Select directory for package building - one time only***

```
sudo chown $USER /usr/local/src
sudo chmod u+rwx /usr/local/src
```

***Change Directory***

    cd /usr/local/src

***Download package***

    wget https://libsdl.org/release/SDL2-2.0.4.tar.gz

***Extract***

    tar -xzvf SDL2-2.0.4.tar.gz
**OR**
    tar -xjvf tarballname.tar.bz2

***Change Directory within /usr/local/src***

    cd /usr/local/src/SDL2-2.0.4

***Run script created by developer***

    bash autogen.sh

***Configure***

    ./configure

***MAKE***

    make

***Check the process***

    sudo checkinstall
**OR**
    sudo checkinstall --fstrans=0

### Disk IO Scheduler

These changes are necessary to improve responsiveness in stock Ubuntu.

   sudo nano /etc/default/grub

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash elevator=cfq"
```

```
Ctrl+x
y {Enter}
```

### Empty Trash

    sudo rm -rf ~/.local/share/Trash/*

### Package List

***List in terminal***

    dpkg -l

***Save list in Downloads folder as a text file***

    dpkg -l >> ~/Downloads/package_list.txt

***Check for specific packages***

    dpkg -l PACKAGE.WHATEVER PACKAGE.WHATEVER PACKAGE.WHATEVER

### Terminal History

***Output in Terminal***

    history

***Saving output in Downloads folder as a text file***

    history -w ~/Downloads/terminal_history.txt

### Weather in Terminal

***Install curl***

    sudo apt install curl

***Weather in Terminal***

    curl http://wttr.in/valletta

### list recursively a directory including hidden files and folders

***To list the contents of a folder and folders within said folder***

    ls -aR Pictures
    
    sudo ls -aR '/usr/share/themes/macOS Sierra'

### Setting up an Alias

***Adding aliases***

`  .bashrc  ` in `  $HOME  `

In terminal: 

    gedit .bashrc

Subsequently in `  .bashrc  `:

    alias name_to_be_used_in_terminal='COMMAND to be executed && COMMAND to be executed'

* No spaces before and after the `  =  ` sign. 
* Use && between commands.

Last step:

    source ~/.bashrc

### Workng with Images & GIFs

***Preparation***

Put the required photos in a separate folder for easier manipulation.

Preferably, images to have same extension: `*.png`

***Resize Images***

    mogrify -resize 50% *.png

***GIF***

    convert -delay 100 -loop 0 *.png animation.gif

`100` = 1 second

`  0` = continuous loop

***Convert images***

    mogrify -format jpg *.png



## Gnome

### Check version

    gnome-shell --version

## Python

### Correct Mathematical Rounding

***Rounding***

```
>>> round(0.075, 2)           # incorrect mathematical rounding
0.07
>>> round(0.075+10**(-2*5),2) #   correct mathematical rounding
0.08
>>> 
```

***Function***

    int(round(FLOAT+10**(-2*5),2))

**FLOAT = 1/0.6468464131101644638460**

***Incorrect rounding***

```
>>> round((1//0.6468464131101644638460)+10**(-2*5),0)
1.0
>>> round((1//0.6468464131101644638460)+10**(-2*5),1)
1.0
>>> round((1//0.6468464131101644638460)+10**(-2*5),5)
1.0
>>> int(round((1/0.6468464131101644638460)+10**(-2*5),5))
1
>>> 
```

***Correct Mathematical Rounding***

```
>>> round((1/0.6468464131101644638460)+10**(-2*5),5)
1.54596
>>> round((1/0.6468464131101644638460)+10**(-2*5),4)
1.546 # invisible 0 integer
>>> round((1/0.6468464131101644638460)+10**(-2*5),3)
1.546
>>> round((1/0.6468464131101644638460)+10**(-2*5),2)
1.55
>>> round((1/0.6468464131101644638460)+10**(-2*5),1)
1.5
>>> round((1/0.6468464131101644638460)+10**(-2*5),0)
2.0
>>> int(round((1/0.6468464131101644638460)+10**(-2*5),0))
2
>>>
```

**reference**: [http://stackoverflow.com/a/38239574](http://stackoverflow.com/a/38239574)
