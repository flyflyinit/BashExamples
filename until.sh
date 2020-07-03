#!/bin/bash

# the script is going to grep the argument (user) and check if it exists in users output command, if the user exists will return true, else will return false 
# and keep looping
# users command returns the logged in list users

until users | grep $1 > /dev/null 
do
	echo "$1 is not logged in"
	sleep 3
done
echo "$1 has just logged"

mail -s "$1 has just logged in" root < .

# mail command send an email, we are sending an email to root
# mail -s hello root 			# this will open a prompt to write the message, and when we complete the message we write a dot "." which indicates the end of the email and send it, if we wanted to do it in a single command line, without prompting a prompt, we add "< ." which means push aa dot 

# ./until.sh sarah
# ssh sarah@localhost
# mail 			# from root user, to view that the mail arrived

exit 0 
