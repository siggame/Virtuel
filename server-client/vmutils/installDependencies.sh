#!/bin/bash

echo "Git install..."
sudo apt-get -y install git

echo "General installs..."
sudo apt-get -y install g++ gcc make cmake build-essential

echo "Python client installs..."
sudo apt-get -y install python python-pip python-dev

echo "Lua client installs..."
sudo apt-get -y install lua5.1 luajit lua-socket

echo "C++ client installs..."
sudo apt-get -y install libboost-all-dev cmake

echo "C# client installs..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | sudo tee -a /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get -y install mono-devel mono-complete referenceassemblies-pcl ca-certificates-mono

echo "Java client installs..."
sudo add-apt-repository ppa:openjdk-r/ppa  -y
sudo apt-get update   
sudo apt-get -y install openjdk-7-jdk maven

echo "Atom installs..."
wget https://github.com/atom/atom/releases/download/v1.10.2/atom-amd64.deb
sudo dpkg -i atom-amd64.deb
rm -f atom-amd64.deb

echo "Nvm installs..."
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash

nvm install 4.6
nvm use 4.6
nvm alias default 4.6
