#!/bin/bash

cd ~

yes | sudo apt-get purge google-chrome-stable
yes | sudo apt-get autoremove

if [ $? -eq 0 ]
then
	echo "Success:Uninstalled Chrome"
	exit 1
else
	echo "Failure: Could not uninstall Chrome"
	exit 0
fi
