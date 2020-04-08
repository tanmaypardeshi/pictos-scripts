#!/bin/bash

cd ~

yes | sudo apt purge code
yes | sudo apt autoremove

if [ $? -eq 0 ]
then
	echo "Success:Uninstalled VS Code"
	exit 1
else
	echo "Failure: Could not uninstall VS Code"
	exit 0
fi
