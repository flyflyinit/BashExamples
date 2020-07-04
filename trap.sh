#!/bin/bash

trap "echo 'INT..'" INT
trap "echo 'KILLING..'" KILL
trap "echo 'TERMINATION..'" TERM

while true
do 
	true
done
