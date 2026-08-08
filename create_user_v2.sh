#!/bin/bash

<<help
argument user 
help


echo "user creation started"

read -p "Enter the user name : " username
read -p "Enter the password : " password

function create_user {
sudo useradd $username

echo -e "$password\n$password" | sudo passwd $username


echo "user creation done and completed"
echo "USer created $username"
}

function delete_user {
sudo userdel $username
}

function check_user {
echo "User deleted $username sucessfully"
if [ $(cat /etc/passwd | grep $username | wc | awk '{print$1}') == 0 ]; then
	echo "As wc count is 0 so the user is deleted"
else
	echo "User is there, not deleted"
fi
}

create_user
check_user
delete_user
check_user


