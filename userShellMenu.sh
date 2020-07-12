#!/bin/bash

# we will create this shell script then we will specify it as a shell environment for a new user called "helpdesk"
# each time we switch to user "helpdesk" the script we will runned, and showing us this menu, and its choices

# useradd -s userSehllMenu.sh helpdesk
# su helpdesk

while true;
do
	trap "echo NOPE" INT
	echo "Select Option: "
	select TASK in 'memory' 'processes' 'disk spcae' 'change passwd' 'logout'
	do
	case $REPLY in
		1) TASK="free -h";;
		2) TASK="ps aux";;
		3) TASK="df -h";;
		4) TASK=passwd;;
		5) TASK=exit;;
	esac
	if [ -n "task" ]
	then
		$TASK
		break
	else
		echo "Invalid Choice"
	fi

	done
done
