### mpv

file to be placed in:
    
    /home/$USER/.config/mpv
    
Bash Script:
    
    cd /tmp
    wget -O mpv_conf.sh https://raw.githubusercontent.com/brandleesee/blc/master/backups/mpv/mpv_conf.sh
    bash mpv_conf.sh
    
Step-by-Step Via terminal:
    
    mkdir -p /home/$USER/.config/mpv/
    cd /home/$USER/.config/mpv/
    wget -O input.conf https://raw.githubusercontent.com/brandleesee/blc/master/backups/mpv/input.conf
    
*Mouse scroll changes volume levels.*


https://github.com/mpv-player/mpv/issues/3602
