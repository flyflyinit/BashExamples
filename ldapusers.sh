#!/bin/bash

cat /dev/null > users
for user in `cat ldapuserss`
do
	USER=${user%%,*}
	USER=${USER#*=}
	echo $USER >> users
done
for user in `cat users`
do
	echo $user
done
