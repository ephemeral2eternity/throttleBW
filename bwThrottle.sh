#!/bin/sh
period=30

if [ $# -gt 0 ]
then
       period=$1
fi

while true
do
        echo "--------- high bw 10 Mbps -------"
        sudo wondershaper eth0 1048576 10240
        sleep $period
        echo "--------- low bw 1Mbps -------"
        sudo wondershaper eth0 1048576 1024
        sleep $period
done
