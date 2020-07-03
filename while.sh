#!/bin/bash

c=0
while true
do
	sleep $c
	c=$(($c+1))
	echo "slept for $c second.."
done
