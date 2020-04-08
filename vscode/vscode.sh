#!/bin/bash

cd ~
cd Downloads/vscode
yes | sudo dpkg -i code_1.43.2-1585036376_amd64.deb
yes | sudo apt-get install -f

if [ $? -eq 0 ]
then
	echo "Success: Installed VS Code"
	exit 1
else
	echo "Failure: Not able to install VS Code"
	exit 0
fi
