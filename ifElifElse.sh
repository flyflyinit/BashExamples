#!/bin/bash

if [ -d $1 ] 
then
	echo "this is a directory"
elif [ -f $1 ] 
then
	echo "this is a file"
else 
	echo "this is not a file, not a directory"
fi	

exit 0
