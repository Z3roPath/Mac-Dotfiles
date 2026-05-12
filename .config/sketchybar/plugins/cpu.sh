#!/bin/bash

# Update CPU usage
CPU_USAGE=$(ps -A -o %cpu | awk '{s+=$1} END {printf "%.1f", s/8}')

sketchybar --set "$NAME" icon="" label="${CPU_USAGE}%"
