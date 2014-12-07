#!/bin/sh
echo "Limit maximum bw to 10Mbps"
sudo wondershaper eth0 1048576 10240
