#!/bin/bash

cd ~
cd ..
cd ..
cd var/opt
yes | sudo tar -xvzf ~/Downloads/eclipse-cpp/eclipse_cpp.tar.gz
yes | sudo cp ~/Downloads/eclipse-cpp/eclipse.desktop ~/../../var/opt/
yes | sudo desktop-file-install eclipse.desktop

if [ $? -eq 0 ]
then
	echo "Success: Installed Eclipse for C/CPP"
	exit 1
else
	echo "Failure: Not able to install Eclipse for C/CPP"
	exit 0
fi
