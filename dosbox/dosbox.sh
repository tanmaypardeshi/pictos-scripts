#!/bin/bash

cd ~
cd Downloads/dosbox
yes | sudo dpkg -i dosbox_0.74-4.3_amd64.deb
yes | sudo apt-get install -f

if [ $? -eq 0 ]
then
	echo "Success: Installed Dosbox"
	exit 1
else
	echo "Failure: Not able to install Dosbox"
	exit 0
fi
