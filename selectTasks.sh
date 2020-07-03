#!/bin/bash

echo "Select task : "
select task in 'Memory Usage' 'Disk Usage' 'Processes' 'Logged in users'
do
	case $REPLY in 
		1) t='free -h';;
		2) t='df -h';;
		3) t='ps aux';;
		4) t='users';;
		*) echo "error try again" && exit 2;;
	esac
	# if $t has a value
	if [ -n "$t" ]
	then
		clear
		$t
		break
	else
		echo "invalid choice" && exit 3
	fi
done
