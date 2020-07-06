#!/bin/bash

COUNTER=$(( $1 * 60  ))

down (){
	COUNTER=$(( COUNTER - 1 ))
	sleep 1
}

while [ $COUNTER -gt 0 ] 
do
	echo "you have $COUNTER seconds"
	down
done

[ $COUNTER = 0 ] && echo && echo "Out of time" && down 
[ $COUNTER = -1 ] && echo && echo "You are one second late" && down

while true 
do
	echo "you are ${COUNTER#*-} seconds late"
	down
done
