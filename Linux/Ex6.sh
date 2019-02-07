#!/bin/bash

# 6. Write a shell script to get the total count of the word “Linux” in all the “.txt” files and also across files present in subdirectories.

echo "Total \"Linux\" Words in current directory and Its subdirectories"
find . -name "*.txt" | xargs grep -o -i "Linux" | wc -l
