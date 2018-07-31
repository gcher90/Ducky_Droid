# Unlocks Android Lock screen

Generates ducky script for unlocking Android lock screen
Convert ducky script to inject.bin file
Copy inject.bin file to sdcard


## Usage

clone the Ducky-Droid
```sh
git clone https://github.com/gcher90/Ducky_Droid.git
cd Ducky_Droid
```
Clone the DuckToolKit Repo:

```sh
git clone https://github.com/kevthehermit/DuckToolkit
```

Insert sdcard and run the following.

Make executable:
```sh
chmod +x gen_ducky_script.sh
```

Install inject.bin to sdcard:
```sh
./gen_ducky_script.sh  /path/to/sdcard/
```

Example:
```sh
./gen_ducky_script.sh  /media/$USER/sdcard
```
or if you have formated the sdcard with label 'DUCKY' then just run:
```sh
./gen_ducky_script.sh  
```

## Note
Only tested on Lenovo A7000 Android 6.0
