#!/bin/sh
period=100
wait_time=600

if [ $# -ge 1 ]
then
	period=$1
fi

if [ $# -ge 2 ]
then
	wait_time=$2
fi

echo "Inject different types of faults per $wait_time seconds and the fault happens for $period seconds!"

echo "--------- stress server cpu for $period seconds at $(date)-------"
stress --cpu 8 --timeout $period
sleep $wait_time
echo "--------- stress server io for $period seconds at $(date)-------"
stress --io 4 --timeout $period
sleep $wait_time
echo "--------- stress server memory for $period seconds at $(date) -------"
stress --vm 1 --vm-bytes 256M --timeout $period
sleep $wait_time
echo "--------- stress server bandwidth for $period seconds at $(date)-------"
sudo wondershaper eth0 1048576 4096
sleep $period
sudo wondershaper eth0 1048576 1048576
sleep $wait_time
echo "--------- Apache service stops for $period seconds at $(date) -------"
sudo service apache2 stop
sleep $period
sudo service apache2 start
