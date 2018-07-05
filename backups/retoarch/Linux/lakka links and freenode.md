http://www.lakka.tv/doc/Accessing-Lakka-command-line-interface/  
https://askubuntu.com/questions/125257/how-do-i-add-an-additional-hard-drive  
http://www.smorgasbord.net/how-to-install-second-hard-drive-in-ubuntu-linux/  
http://linux-sys-adm.com/how-to-add-second-hdd-additional-disk-drive-in-ubuntu-14-04-linux/  
http://www.lakka.tv/doc/Accessing-Lakka-filesystem/  
https://askubuntu.com/questions/318987/ubuntu-doesnt-see-external-usb-hard-disk#380580  
http://www.lakka.tv/doc/PC/  
https://forums.libretro.com/t/how-to-update-cores-in-lakka-pi-3/14809  
https://askubuntu.com/questions/769974/how-to-automatically-mount-2nd-internal-hard-drive  
https://github.com/libretro/Lakka-LibreELEC/issues/478  
https://github.com/libretro/Lakka-LibreELEC/issues/429  
  
03 July 2018  
[07:56] == brandleesee [c39e4481@gateway/web/freenode/ip.195.158.68.129] has joined #lakkatv  
[07:57] <brandleesee> Hello all, good day, quick question, which image should I install for a Beelink S1 minipc? (specs from seller: https://www.gearbest.com/mini-pc/pp_825462.html?wid=1433363#goodsDetail). Thank you.  
[07:58] <brandleesee> To elaborate more, it has an Intel Apollo Lake chipset.  
[08:11] Ignored discobot, to unignore type: /UNIGNORE discobot  
[08:19] <vudiq> brandleesee: generix.x86_64  
[08:19] <vudiq> generic*  
[08:22] <brandleesee> well understood, thank you, should I go for stable or latest build of June 2018?  
[08:23] <vudiq> brandleesee: http://le.builds.lakka.tv/Generic.x86_64/Lakka-Generic.x86_64-2.1.1.img.gz  
[08:23] <vudiq> latest stable  
[08:23] <vudiq> but not yet on lakka.tv/get  
[08:23] <vudiq> but should be the same as latest devel  
[08:23] <brandleesee> downloading as we speak  
[08:24] <brandleesee> true, that's why I asked, thank you once again  
[08:24] <vudiq> but not sure if all features (wifi/bt) are supported...  
[08:24] <vudiq> it does not say what chip it uses  
[08:25] <brandleesee> well, my two gamepads are Xbox 360 wireless (with dongle) which should work out of the box  
[09:35] <brandleesee> I do not think Beelink S1 is supported through Lakka Generic x86_64 as device is stuck at Boot screen (Lakka flower/logo).  
[09:37] <brandleesee> Please forget above statement. On second try, it booted successfully.  
[10:29] <vudiq> first boot takes time  
[10:29] <vudiq> it prepares the storage partition /resize, format/  
[10:29] <vudiq> but it should show some output, probably too much overscan and you do not see it on your tv  
[10:30] <vudiq> try to set your tv to gaming mode / only scan - depending on your tv  
[11:04] == radius [~radius@190.131.143.106] has quit [Ping timeout: 240 seconds]  
[11:09] == radius [~radius@190.131.143.106] has joined #lakkatv  
[11:10] <brandleesee> indeed, at one point there was something like "ring \storage" or similar. I'm assuming: Preparing....  
[11:12] <brandleesee> Question, pls: Online Updater only contains: Update Lakka, Thumbnails Updater & Content Downloader. I believe that both in WIndows and Linux are other options. How shall I go about this?  
[11:23] <brandleesee> Essentially, I am looking for the Update options.  
[11:40] <vudiq> brandleesee: what would you like to update? afaik the core updater is disabled in lakka, so those options you get are all you might need for lakka  
[11:41] <vudiq> but you can enable advanced options in settings -> user interface and then select more items to be display in settings -> user interface -> views (just toggle on/off what you want to be displayed)  
[11:44] <brandleesee> Need to update the assests as I only get black blocks instead of the Playstation and PSP icons (also including for games).  
[11:46] <brandleesee> Furthermore, cannot get any game to work in spite of injecting the two playlists into the playlists folder and bios(psx) + PPSSPP folder in system folder  
[11:46] <brandleesee> another thing is that I have the games on a symlink called storage, so it could be that lakka isn't recognizing the folder because default folder in lakka structure is also storageżroms  
[11:47] <brandleesee> With regards to advanced options, I have everything on ON just in case however, update options are not listed ie not available  
[11:56] <brandleesee> Menu Color Theme does not change, ie. Dark, Plain etc etc I still get the red background.  
[11:57] <brandleesee> (even on restarting the program - Quit Retroarch)  
  
05 July 2018  
[19:07] == brandleesee [c39e4481@gateway/web/freenode/ip.195.158.68.129] has joined #lakkatv  
[19:10] <brandleesee> hello again, I flashed version 2.1.1 on USB and managed to play playstation1 titles. However, I cannot get PPSSPP to work. When I run a psp game I get the Lakka flower logo and black background. Nothing else happens. I have to press escape to return to menu. Any thoughts/help, please? Thank you.  
[19:23] <kivutar> it happens to me on some games  
[19:23] <kivutar> but most are running fine for me  
[19:23] <kivutar> I noticed a regresssion on only 1  
[19:54] <brandleesee> hi kiv, long time no speak! ok understood, I ll add some more games and test (and relay feedback)  
[20:07] <brandleesee> ...something is very wrong: Little Big Planet, Bust A Move Deluxe, Crash Team Tag Racing and Tekken Dark Resurrection all default to Lakka flower logo when run.  
[20:09] <brandleesee> Shall I file a bug report on GitHub? or is there anything I can do right now, s'il vous plait? Thanks, man.  
