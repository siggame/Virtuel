#!/bin/sh

echo "#### Updating..."
sudo apt-get update


echo "#### Installing general things..."
sudo apt-get -y install git g++ gcc make cmake build-essential tmux vim htop

echo "#### Installing Python Client dependencies..."
sudo apt-get -y install python python-pip python-dev

echo "#### Installing Lua Client dependencies..."
sudo apt-get -y install lua5.1 luajit lua-socket

echo "#### Installing C++ Client dependencies..."
sudo apt-get -y install libboost-all-dev

echo "#### Installing C# Client dependencies..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | sudo tee -a /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get -y install mono-devel mono-complete referenceassemblies-pcl ca-certificates-mono

echo "#### Installing Java Client dependencies..."
sudo add-apt-repository ppa:openjdk-r/ppa  -y
sudo apt-get update   
sudo apt-get -y install openjdk-7-jdk maven

echo "#### Setup other..."
ln -s /vagrant workspace
