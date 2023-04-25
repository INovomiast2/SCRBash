#!/bin/bash

IP_LIST="192.168.1.34 192.168.1.50" #Placeholder IP's

USUARIO="username" #Placeholader Username

for IP in $IP_LIST ; do
    utime=$(ssh $USUARIO@$IP uptime | awk '{ print $3 }')
    echo "$IP Uptime: $utime"
done

#Script by: INovomiast