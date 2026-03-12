#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
MEM=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
DISK=$(df / | tail -1 | awk '{print $5}')

echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEM%"
echo "Disk Usage: $DISK"

if (( $(echo "$CPU > 80" | bc -l) )); then
  echo "WARNING: CPU usage above 80%"
fi
