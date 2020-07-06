#!/bin/bash

PROCESS=$1
COUNTER=0

while ps aux | grep $PROCESS | grep -v grep | grep -v processMonitoring > /dev/null
do
	COUNTER=$((COUNTER+1))
	sleep 1	
	clear
	echo $PROCESS HAVE BEEN RUNNING $COUNTER 
done

echo "starting $PROCESS.."
logger -p emerg "$PROCESS has been stopped at $(date)"
systemctl start $PROCESS && echo "$PROCESS started."

exit 0
