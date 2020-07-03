#!/bin/bash

x=$1

case $x in
	yes)
		echo "you entered yes" 
		;;
	no)
		echo "you entered no"
		;;
	n|y)
		echo "you entered y or n"
		;;
	*)
		echo "bad input try again"
		;;
esac
