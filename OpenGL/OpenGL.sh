#!/bin/bash
#REQUIRES STABLE INTERNET CONNECTION
cd ~
cd Downloads/OpenGL
yes | sudo apt-get update
yes | sudo apt-get install freeglut3
yes | sudo apt-get install freeglut3-dev
yes | sudo apt-get install binutils-gold
yes | sudo apt-get install g++ cmake
yes | sudo apt-get install libglew-dev
yes | sudo apt-get install g++
yes | sudo apt-get install mesa-common-dev
yes | sudo apt-get install build-essential
yes | sudo apt-get install libglew1.5-dev libglm-dev


if [ $? -eq 0 ]
then
	echo "Success: Installed OpenGL"
	exit 1
else
	echo "Failure: Not able to install OpenGL"
	exit 0
fi
