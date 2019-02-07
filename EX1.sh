#! /bin/bash
#1. Write a shell script that adds an extension “.new” to all the files in the directory.

#First loop remove all the current extension of files
for i in * ; do 
	if [ -f $i ]; then
		mv $i ${i%.*}
	fi
done
#Second loop Add '.new' to all files
for i in * ; do 
	if [ -f $i ]; then
		mv $i $i.new
	fi
done
