#!/bin/bash

#this is a shell script for user creation
<<help

this is a shell script
to create users

help

echo "============================= Creation of User Started============================="
read -p "enter the username : " username
read -p "enter the password : " password

sudo useradd -m "$username"


echo -e "$password\n$password" | sudo passwd "$username"

echo "============================= Creation of user completed ==================="
