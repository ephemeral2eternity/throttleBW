#!/bin/sh
if [$# -gt 0]
then
        period = $1
else
        period = 10
fi

while true
do
        sudo wondershaper eth0 1048576 1048576
        echo "--------- high bw 1Gbps -------"
        sleep $1
        sudo wondershaper eth0 1048576 10480
        echo "--------- low bw 10Mbps -------"
        sleep $1
done
