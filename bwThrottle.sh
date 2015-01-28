#!/bin/sh
period=60

if [ $# -gt 0 ]
then
       period=$1
fi

while true
do
        echo "--------- high bw 1 Gbps -------"
        sudo wondershaper eth0 1048576 1048576
        sleep $period
        echo "--------- low bw 10 Mbps -------"
        sudo wondershaper eth0 1048576 10240
        sleep $period
done
