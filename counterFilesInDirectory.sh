#!/bin/bash

echo "enter directory : "
read dir
cd $dir
cnt=0
for i in *
do
	cnt=$(($cnt+1))
done
echo "$dir Contains $cnt files and directories"
