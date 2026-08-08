#!/bin/bash

<<help
This is an explaination of function
help

function create_user {

read -p "Enter the username :" username
sudo useradd -m $username

echo "user $username created sucessfully"

}

for (( i=1;i<=5;i++ ))
do
	create_user
done

