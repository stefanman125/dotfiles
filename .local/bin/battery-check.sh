#!/bin/bash
#
# Title: Get Battery Life percentage by design and send a Dunst notification if its low
#
# Description: Gets a battery percentage based on the full battery design spec, not the current battery full capacity due to the degredation over time, and sends a notification using Dunst if the percentage is low.
#
#


# Get Various Battery Info Variables
MAX=$(grep "FULL_DESIGN" /sys/class/power_supply/BAT0/uevent | awk -F= '{ print $2 }')
CURRENT=$(grep "ENERGY_NOW" /sys/class/power_supply/BAT0/uevent | awk -F= '{ print $2 }')

# Divides the current by the max design percentage to the 4th decimal place, then multiplies by 100 to get a percentage, and then removes the last two characters to leave it at a two decimal place float
PERCENTAGE=$(echo "scale=4 ; ($CURRENT / $MAX)*100" | bc | awk '{print substr($0, 1, length($0)-2)}')
echo $PERCENTAGE

BATTINFO=`acpi -b | grep "Battery 0"`

# Send normal urgency message if battery is getting low

if echo $BATTINFO | grep "Discharging" | cut -f 5 -d " " < 01:00:00 ; then
        echo "True"
        # Not sure what the DISPLAY=:0 part is, so I just edited the command to run notify-send
        # DISPLAY=:0 /usr/bin/notify-send -u low "battery" "$BATTINFO"
        /usr/bin/notify-send --urgency normal "Battery" "Battery is getting low, about an hour remaining.\n$BATTINFO"
fi

# Send a critical message if battery is about to die

if  echo $BATTINFO | grep "Discharging" | cut -f 5 -d " " < 00:30:00; then
        echo "True"
        # Not sure what the DISPLAY=:0 part is, so I just edited the command to run notify-send
        # DISPLAY=:0 /usr/bin/notify-send -u low "battery" "$BATTINFO"
        /usr/bin/notify-send --urgency critical "Battery" "Battery is critically low, half an hour remaining.\n$BATTINFO"
fi
