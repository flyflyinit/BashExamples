#!/bin/bash

# command substitution
# $(command here)         same as =>       `command here`
for i in $(cat /etc/passwd)
do
	echo $i
done
