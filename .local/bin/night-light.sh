#!/bin/bash
#
# Purpose: Dims blue light at night time, undims it during the day.
#

currenttime=$(date +%H:%M)
if [[ "$currenttime" > "22:00" ]] || [[ "$currenttime" < "08:00" ]]; then
  redshift -O 3500 -r -P # Set blue light to very low
else
  redshift -O 6500 -r -P # Set blue light to normal
fi
