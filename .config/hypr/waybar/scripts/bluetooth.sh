#!/bin/bash

# Check if any Bluetooth device is connected
connected=$(bluetoothctl info | grep "Connected: yes")

if [ -n "$connected" ]; then
    # Connected
    echo "{\"text\":\"\"}"
else
    # Not connected
    echo "{\"text\":\"󰂲\"}"
fi
