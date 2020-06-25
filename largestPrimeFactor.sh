#!/bin/Bash


function lpf(){
	n=$1+1
	for (( i=0;i<=n;i++ )); do
	  if [[ i>1 ]]; then
	    for (( j=2;j<=i;j++)); do
		if [[ i%j -eq 0 ]]; then
			break
		
	    else
		echo "$i"
		fi
	    done
	  fi
	done
	
}

echo "Enter number : "
read number
lpf $number

