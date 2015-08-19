#!/bin/bash

## echo "The number of seconds elapsed since 01/01/1970 is:
## > `date +%s`.
## > The current date and time of the system (starting memory error) is:
## > `date`." > memory_error.txt

stress --vm 8 --vm-bytes 256M -t 30
