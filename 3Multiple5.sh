#!/bin/bash

echo "Multiples of 3 less than 100 are : "
sum=0
sumtotal = 0
for (( i=1 ; i<=100 ; i++ )) ; do
	if [[ i%3 -eq 0 ]]; then
		echo "$i % 3 = 0"
		sum=$(( $sum+$i ))
	fi 	
done

sumtotal=$(( $sum ))
echo "SUM : $sum"
echo ""
echo ""
sum=0
echo "Multiples of 5 less than 100 are : "
for (( i=1 ; i<=100 ; i++)); do 
	if [[ i%5 -eq 0 ]]; then
		sum=$(( $sum+$i ))
		echo "$i % 5 = 0"
	fi 
done
echo "SUM : $sum"
sumtotal=$(( $sumtotal+$sum ))
echo ""
echo "SUM TOTAL : $sumtotal"
