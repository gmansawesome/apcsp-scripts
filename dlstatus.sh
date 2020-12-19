#!/bin/bash

USERS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

for user in $USERS; do
ping -c1 $user
	if [ $? -eq 0 ]; then
		echo $user" : alive";
	else
		echo $user" : dead";
	fi
done

exit 0
