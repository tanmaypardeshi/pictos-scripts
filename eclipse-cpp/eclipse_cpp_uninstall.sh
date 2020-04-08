#!/bin/bash

cd ~
cd ..
cd ..
cd var/opt
yes | sudo apt-get autoremove eclipse*
yes | sudo rm -r eclipse

if [ $? -eq 0 ]
then
	echo "Success:Uninstalled Eclipse for C/CPP"
	exit 1
else
	echo "Failure: Could not uninstall for C/CPP"
	exit 0
fi
