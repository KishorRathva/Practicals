#! /bin/bash

#2. Delete file which has special characters. “ -“, “—“, “*”, “$
for i in find . -name '*[-*$_]*' ; do
	rm -f $i
done 

