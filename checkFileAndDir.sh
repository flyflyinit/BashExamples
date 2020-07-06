#!/bin/bash

# -z     if var has argument
# -e 	 if file or dir .. exist

[ -z $1 ] && echo no argument provided && exit 1 
[ ! -e $1 ] && echo $1 does not exist && exit 2
[ -d $1 ] && echo $1 is a directory && exit 0
[ ! -f $1 ] && echo $1 not directory or file && exit 0
[ -x $1 ] && echo $1 is executable && exit 0
grep "#!/bin/bash" $1 && echo $1 is a no-executable shell script && exit 0
echo "Not found!"
