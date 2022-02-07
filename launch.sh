#!/bin/sh

if [ -d /mnt/SDCARD/miyoo ] ; then

	./printstr "Emptying existing skins folder"
    
	# Empty the existing skin folder
	rm /mnt/SDCARD/miyoo/app/skin/*

	./printstr "Copying skin files"
	
	# Copy the skin files into the miyoo app folder
	for FILE in ./data/miyoo/*
		do
        cp -R $FILE /mnt/SDCARD/miyoo/
	done
	
fi

reboot
