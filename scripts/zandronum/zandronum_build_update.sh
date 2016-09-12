#!BIN/BASH

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
#Finish
#------------------------------
