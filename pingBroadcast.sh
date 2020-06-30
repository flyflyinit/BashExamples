#!/bin/bash

for i in {1..255};do ping -c 1 192.168.1.$i > /dev/null && echo "192.168.1.$i success" ;done
exit 0 
