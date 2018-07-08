![](http://i.imgur.com/y3HivII.png)

# DoomRetro on Ubuntu
[official website](http://doomretro.com/) | [official wiki](https://github.com/bradharding/doomretro/wiki) | [solved issue](https://github.com/bradharding/doomretro/issues/300)

This guide is suitable for LTS 16.04 and each and every release thereafter.

## Check that the following are installed

```
libsdl2-dev
libsdl2-mixer-dev
libsdl2-image-dev
build-essential
pkg-config
autotools-dev
autoconf
cmake
git
```

![screenshot from 2016-08-29 14-53-492](https://cloud.githubusercontent.com/assets/12674437/18052148/ed4bd674-6df8-11e6-81cb-782c48557405.png)

## Cloning & CMaking

```
git clone https://github.com/bradharding/doomretro.git
cd ~/doomretro
cmake ../doomretro
export CC=clang
make
```

![screenshot from 2016-08-29 15-05-2222](https://cloud.githubusercontent.com/assets/12674437/18054295/8b21e3f2-6e03-11e6-8d49-758545ff4edd.png)

![](http://i.imgur.com/FCiY8x1.png)

## Finalising

The following will have been created in the parent directory `~/doomretro`:
* `doomretro`
* `doomretro.wad`

Next is to add the Source IWADs in the **same** directory as above: `~/doomretro`. 

For starters here is the Shareware version: [`doom1.wad`](http://www.doomworld.com/3ddownloads/ports/shareware_doom_iwad.zip)

## Play!

```
cd ~/doomretro
./doomretro -iwad doom1.wad
```

### Play with Patch (P)WADs

```
cd ~/doomretro
./doomretro -iwad doom2.wad -file pwads/breach.wad
```

`Note` that PWADs are incompatible with Shareware `doom1.wad`.

`Note` that `breach.wad` is included in the install and has its own folder: `~/doomretro/breach`. However, I place it in `~/doomretro/pwads` to reduce clutter.

`Tip` Store PWADs in a separate folder: `~/doomretro/pwads` to reduce clutter.

![](http://i.imgur.com/UsbmsDM.png)

#### Play with modifications

DoomRetro supports two particular modifications which affect animations and aesthetics:
* [SMOOTHED.wad](https://www.doomworld.com/vb/wads-mods/85991-smoothed-smooth-monsters-for-doom-retro/)
* [BlackOps.wad](https://www.doomworld.com/vb/wads-mods/84859-black-ops-smooth-weapons-dehacked-mod-for-doom-retro-and-eternity/)

```
cd ~/doomretro
./doomretro -iwad doom2.wad -file pwads/breach.wad pwads/SMOOTHED.wad pwads/BlackOps.wad
```

![](http://i.imgur.com/qlTUmdb.png)

## IWADs

### [Shareware](http://www.doomworld.com/3ddownloads/ports/shareware_doom_iwad.zip) Doom

```
cd ~/doomretro
./doomretro -iwad doom1.wad
```

### Registered & Ultimate Doom

```
cd ~/doomretro
./doomretro -iwad doom.wad -file pwads/SMOOTHED.wad pwads/BlackOps.wad
```

### Doom II: Hell on Earth

```
cd ~/doomretro
./doomretro -iwad doom2.wad -file pwads/SMOOTHED.wad pwads/BlackOps.wad
```

### Doom II: No Rest for The Living

```
cd ~/doomretro
./doomretro -iwad nerve.wad -file pwads/SMOOTHED.wad pwads/BlackOps.wad
```

Albeit not an IWAD, DoomRetro considers `nerve.wad` as such. In order to play properly, `doom2.wad` has to be in the same directory.

### Final Doom: The Plutonia Experiment

```
cd ~/doomretro
./doomretro -iwad plutonia.wad -file pwads/SMOOTHED.wad pwads/BlackOps.wad
```

### Final Doom: TNT - Evilution

```
cd ~/doomretro
./doomretro -iwad tnt.wad -file pwads/SMOOTHED.wad pwads/BlackOps.wad
```

## PWADs

### Breach

```
cd ~/doomretro
./doomretro -iwad doom2.wad -file pwads/breach.wad pwads/SMOOTHED.wad pwads/BlackOps.wad
```

Is included in the install. No downloading necessary.

### [Going Down](https://www.doomworld.com/idgames/levels/doom2/Ports/megawads/gd)

```
cd ~/doomretro
./doomretro -iwad doom2.wad -file pwads/gd.wad pwads/SMOOTHED.wad pwads/BlackOps.wad
```

![](http://i.imgur.com/tUDHOsG.gif)

### More

The DoomRetro developer offers a bundled .zip file with fairly compatible [pwads](https://www.dropbox.com/s/9dr1f6nwxtq8u8o/doomretro-mappack.zip?dl=1).

## Quit

When quitting the game, press `y`. Not Capital-Y. If playing with audio on, an eerie sound will be produced confirming your command.
