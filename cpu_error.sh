#!/bin/bash

echo "The number of seconds elapsed since 01/01/1970 is:
> `date +%s`.
> The current date and time of the system (starting CPU error) is:
> `date`." > cpu_error.txt

## e.g., for example if there are 2 processors
for i in {1..500}; do
    perl -e '$z=time()+(1*70); while (time()<$z) { $j++; $j *= 3.1 for (1..9999); }' &
done
wait
