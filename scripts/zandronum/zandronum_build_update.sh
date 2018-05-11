#!/bin/bash

#------------------------------
#Updating Zandronum
#------------------------------
cd $HOME/zandronum_build/zandronum && \
hg pull ; hg update

#------------------------------
#Compiling Development Zandronum client
#------------------------------
cd $HOME/zandronum_build/zandronum/buildclient && \
if [ "$(uname -m)" = "x86_64" ]; then
FMODFOLDER="fmodapi42416linux64"
FMODFILE="libfmodex64-4.24.16"
else
FMODFOLDER="fmodapi42416linux"
FMODFILE="libfmodex-4.24.16"
fi && \
make clean ; \
cmake -DCMAKE_BUILD_TYPE=Release \
-DFMOD_LIBRARY=$HOME/zandronum_build/zandronum/$FMODFOLDER/api/lib/$FMODFILE.so \
-DFMOD_INCLUDE_DIR=$HOME/zandronum_build/zandronum/$FMODFOLDER/api/inc .. && \
make

#------------------------------
#Compiling Zandronum server
#------------------------------
cd $HOME/zandronum_build/zandronum/buildserver && \
make clean ; \
cmake -DCMAKE_BUILD_TYPE=Release -DSERVERONLY=ON .. && \
make

#------------------------------
#Installing
#------------------------------
sudo mkdir -pv /usr/games/zandronum

#------------------------------
#Copy zandronum, zandronum.pk3, skulltag_actors.pk3, liboutput_sdl.so, zandronum-server and libfmodex64-4.24.16.so or libfmodex-4.24.16.so to /usr/games/zandronum
#------------------------------
if [ "$(uname -m)" = "x86_64" ]; then
FMODFOLDER="fmodapi42416linux64"
FMODFILE="libfmodex64-4.24.16"
else
FMODFOLDER="fmodapi42416linux"
FMODFILE="libfmodex-4.24.16"
fi && \
sudo cp -v /home/$USER/zandronum_build/zandronum/{buildclient/{zandronum,\
zandronum.pk3,skulltag_actors.pk3,output_sdl/liboutput_sdl.so},\
buildserver/zandronum-server,$FMODFOLDER/api/lib/$FMODFILE.so} \
/usr/games/zandronum

#------------------------------
#Make zandronum script, add executable permission and copy it to /usr/bin
#------------------------------
cd /tmp && \
echo '#!/bin/sh' > zandronum && \
echo >> zandronum && \
echo 'export LD_LIBRARY_PATH=/usr/games/zandronum' >> zandronum && \
echo 'exec /usr/games/zandronum/zandronum "$@"' >> zandronum && \
chmod 755 zandronum && \
sudo cp -v zandronum /usr/bin && \
rm -fv zandronum

#------------------------------
#Make zandronum-server script, add executable permission and copy it to /usr/bin
#------------------------------
cd /tmp && \
echo '#!/bin/sh' > zandronum-server && \
echo >> zandronum-server && \
echo 'exec /usr/games/zandronum/zandronum-server "$@"' >> zandronum-server && \
chmod 755 zandronum-server && \
sudo cp -v zandronum-server /usr/bin && \
rm -fv zandronum-server

#------------------------------
#Finish
#------------------------------
