#!/bin/sh

## Generates ducky script that unlocks Android device lock-screen
## Tested on: Lenovo A7000 Android 6.0
## Author: George Cherian
## Email: george_cherian@outlook.com

# generate ducky script
python unlock_lenovo.py > unlock_lenovo.ducky

# convert ducky script to inject.bin
python DuckToolkit/ducktools.py -e -l gb unlock_lenovo.ducky inject.bin

if [ -z $1 ] # Check if SDCARD path is supplied as argument
  then
  SDCARD=/media/$USER/DUCKY # Default path
else
  SDCARD=$1 # Use path from command line
fi

if [ -d $SDCARD ]; then # check if sdcard is mounted
  # Copy inject.bin to ducky sdcard
  cp -v inject.bin $SDCARD
  # Unmount sdcard
  umount $SDCARD
  echo "Copied inject.bin.. You may now unplug SDCARD!"
else
  echo "The path to SDCARD doesn't exist!"
  echo "Please insert SDCARD and try again!"
fi
