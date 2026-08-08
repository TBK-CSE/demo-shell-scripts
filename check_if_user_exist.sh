#!/bin/bash

<<info
This shell script checks if the user exist or not.
info

read -p "Enter the username you wish to check: " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];then
	echo "User doesnot exist"
else
	echo "User exist"
fi	
