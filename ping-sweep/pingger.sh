#! /bin/bash

for ip in $(seq 1 254); do

ping -c 1 -w 1 172.16.5.$ip

done
