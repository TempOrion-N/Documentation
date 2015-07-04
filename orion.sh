#! /bin/bash
# Give command line argument for the device ./orion.sh <device>

if [ "$1" != "" ]; then
	echo '1:repo sync and build, 2:build'
	read choice
	if [ "$choice" == "1" ]; then
		eval "cd ~/orion"
		eval "repo sync -j16"
	elif [ "$choice" == "2" ]; then
		eval "cd ~/orion"
	fi
		eval ". build/envsetup.sh"
		eval "export USE_PREBUILT_CHROMIUM=1"
		eval "brunch $1"
else
	echo "error: enter device name"
fi
