#!/bin/sh
period=30

if [ $# -gt 0 ]
then
       period=$1
fi

while true
do
        sudo wondershaper eth0 1048576 1048576
        echo "--------- high bw 1Gbps -------"
        sleep $period
        sudo wondershaper eth0 1048576 1048
        echo "--------- low bw 1Mbps -------"
        sleep $period
done
