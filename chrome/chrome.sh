#!/bin/bash

cd ~
cd Downloads/chrome
yes | sudo dpkg -i google-chrome-stable_current_amd64.deb

if [ $? -eq 0 ]
then
	echo "Success: Installed Chrome"
	exit 1
else
	echo "Failure: Not able to install chrome"
	exit 0
fi
