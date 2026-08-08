#!/bin/bash

<<help
This script will install the package that you pass in the argument

Eg : ./install_package.sh  nginx
help


echo "Installation of $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y >/dev/null

echo "==========================Installation completed for $1=================================="
