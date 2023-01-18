#!/bin/bash
#
# Purpose: Dims blue light at night time, undims it during the day.
#

currenttime=$(date +%H:%M)
# Changing '>' to '>=' didn't work, so I had to add another condition
if [[ "$currenttime" > "22:00" ]] || [[ "$currenttime" < "08:00" ]] || [[ "$currenttime" == "22:00" ]]; then
  redshift -O 3500 -r -P # Set blue light to very low
else
  redshift -O 6500 -r -P # Set blue light to normal
fi
