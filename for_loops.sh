#!/bin/bash

<<help
This is an explaination for for-loops
loops : anything that you want to repeat again and again and again based on conditions
for loops consitions

1....10

starting point = 1
ending point = 10
increament/decreament = +/-

5....1
startingpoint =5
endingpoint =1

help


for (( num=1 ; num<=10 ; num++))
do

	echo "$num"
	echo "hello friends"
done


