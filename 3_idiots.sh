#!/bin/bash

# user defined variable
hero = "Rancho"
villain = "Virus"

echo "3 idiots k hero hero hai $hero"

echo "# idiots k villain hai $villain"

#environment variable (Predefined variable)

echo "current logged in user $USER"

#user input
read -p "Rancho ka poora naam kya tha ?" fullname

echo "Rancho ka poora naam $fullname tha"

#arguments

# ./#_idiots.sh raju farhan rancho
echo "movie ka naam: $0"

echo "first idiot : $1"
echo "second idiot : $2"
echo "third idiot : $3"
echo "total number of idiots:" $#
echo "Hence all idiots are : $@"

