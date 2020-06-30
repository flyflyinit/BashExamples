#!/bin/bash

#traceroute is a tool that lets you track the route to a destination
#traceroute works based on icmp packets "ping" by incrementing the ttl each time and returning the responding ip address we can determine the full path to our destination

echo "Enter Destination : "
read dst
for i in {1..100}
do
	ping -c 1 -t $i $dst | sed -n '2p' | awk {'print $2'} 
done
