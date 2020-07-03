#!/bin/bash

# -a to create home directory
# -b to make a user a member of group id
# -c  to specif a shell
# OPTARG is a variable to store value that was given with the option => c:   colon":" specified that option c has an optarg 

while getopts "ab:c:" opt
do
	case $opt in
		a ) VAR1=-m ;;
		b ) VAR2="-g $OPTARG" ;;
		c ) VAR3="-s $OPTARG" ;;
		* ) echo "usage: makeuser [-a][-b][-c shell] username"
	esac

done

echo "the current arguments are set to $*"
shift $((OPTIND-1))
# shift is going to shift the arguments, and delete the arguments and just left the username
echo "now the current argument are set to $*"
echo "useradd $VAR1 $VAR2 $VAR3 $1"

exit 0


# ./makeuser.sh -a -b -c bash sarah

