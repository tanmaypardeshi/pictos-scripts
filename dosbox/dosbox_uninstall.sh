#!/bin/bash

cd ~

yes | sudo apt-get remove dosbox
yes | sudo apt-get remove --auto-remove dosbox
yes | sudo apt-get purge dosbox
yes | sudo apt-get purge --auto-remove dosbox

if [ $? -eq 0 ]
then
	echo "Success:Uninstalled Dosbox"
	exit 1
else
	echo "Failure: Could not uninstall Dosbox"
	exit 0
fi
