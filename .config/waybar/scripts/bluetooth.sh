#!/bin/bash

# Check if Bluetooth is powered on
POWERED=$(bluetoothctl show | grep "Powered:" | awk '{print $2}')

# Count connected devices
CONNECTED=$(bluetoothctl devices Connected | wc -l)

if [[ "$POWERED" == "yes" ]]; then
    echo "{\"output\":\"On ($CONNECTED)\"}"
else
    echo "{\"output\":\"Off\"}"
fi
