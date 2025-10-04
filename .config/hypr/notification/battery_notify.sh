#!/bin/bash

BATTERY="/sys/class/power_supply/BAT0"

while true; do
    LEVEL=$(cat "$BATTERY/capacity")
    STATUS=$(cat "$BATTERY/status")

    # Debug line (optional)
    # echo "Battery: $LEVEL%, Status: $STATUS"

    if [ "$STATUS" = "Discharging" ]; then
        if [ "$LEVEL" -le 20 ] && [ "$LEVEL" -gt 15 ]; then
            notify-send -u normal "⚡ Low Battery" "Battery at ${LEVEL}%"
        elif [ "$LEVEL" -le 15 ]; then
            notify-send -u critical "🔴 Critical Battery" "Plug in your charger!"
        fi
    elif [ "$STATUS" = "Full" ]; then
        notify-send -u low "✅ Battery Full" "You can unplug the charger."
    fi

    sleep 120  # check every 2 minutes
done
