#!/bin/bash

echo "enter directory : "
read dir
cd $dir
cnt=0

# * in directory represent all the items that contain
for i in *
do
	cnt=$(($cnt+1))
done
echo "$dir Contains $cnt files and directories"
