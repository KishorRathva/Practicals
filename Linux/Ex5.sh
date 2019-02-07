#!/bin/bash

#5.Write a shell script to display the last updated file of the newest file in a directory.
clear
for i in $(ls -t) ; do 
	if [ -f $i ] ; then
		echo "Last updated file : In [ $(pwd) ]"
		echo $i
		break 
	fi
done
