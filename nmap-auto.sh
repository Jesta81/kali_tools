#!/bin/bash

TARGET=10.129.66.168 && nmap -p$(nmap -p- --min-rate=1000 -T4 $TARGET -Pn | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//) -A -vv $TARGET -oN nmap/nmap-all-tcp.nmap
