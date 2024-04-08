#/bin/bash

status () { 

	echo -n "$(date '+%I:%M') "
}

while :; do

	if xhost >& /dev/null ; then xsetroot -name "$(status)" ; fi	
	sleep 1

done
