#!/bin/bash
if ["$1" == "" ]
then
	echo "Usage: ./portscan.sh [IP]"
	echo "Example ./portscan.sh 192.168.1.10"
else
	echo "Please wait while it is scanning all the open ports..."
	nc -nvz $1 1-65535 > $1.txt 2>&1
fi
