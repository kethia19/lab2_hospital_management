#!/bin/bash

#This is just for practice
#
#First, I need to prompt it to enter the device name
echo "Enter your device name (e.g: Monitor_A, Monitor_B, ...):"
read device_name

#Then, I store the data into the heart rate file

heart_rate_file="heart_rate_log.txt"

# Displaying process ID (PID) to the user
echo "Starting heart rate monitoring for device: $device_name"
echo "Process ID (PID): $$"

#Start loading data
echo "Timestamp           Device_Name Heart_Rate" >> "$heart_rate_file"

# Infinite loop to simulate heart rate logging
while true; do
    # Generate a random heart rate between 40 and 120
    heart_rate=$((RANDOM % 81 + 40))

    # Get the current timestamp
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")

    # Write the log entry to the file
    echo "$timestamp  $device_name  $heart_rate" >> "$heart_rate_file"

    # Wait for 1 second
    sleep 1
done
