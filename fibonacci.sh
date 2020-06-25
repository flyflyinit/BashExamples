#!/bin/bash

echo "Please, enter a number : "
read number

function fibo() {
	a=0
	b=1
	n=$1
	echo "===================================="
	if [[ n<0 ]]; then
		echo "error"
	elif [[ n -eq 0 ]]; then
		return $a 
	elif [[ n -eq 1 ]]; then
		return $b
	else
		for (( i=2;i<=$n;i++ ));do
			c=$(( $a+$b ))
			echo $c
			a=$b
			b=$c
		done
	fi
}

fibo $number
