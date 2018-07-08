# Brandleesee's FAQ 

## Scripts in Home Folder

Since the terminal starts at the `Home` folder location `~`, then makes sense that any bash scripts are placed there so as to avoid changing the directory `cd` before running a script.

![](http://i.imgur.com/Un6kV5K.png)
Place script in `Home` folder.

![](http://i.imgur.com/ftmgZkC.png)
Run `bash _.sh`

## Ubuntu & Derivatives

### Flashing a distro to USB drive 

    ls -l /dev/sd*

    cd Downloads

    sudo dd if=______.iso of=/dev/sd_

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

### 
