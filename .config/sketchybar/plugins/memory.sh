#!/bin/bash

# Calculate Available Memory: (Free + Inactive + Speculative)
# This represents memory that macOS can easily reclaim for new applications.
MEMORY_USAGE=$(vm_stat | perl -ne '/page size of (\d+) bytes/ && ($s=$1); /Pages free:\s+(\d+)/ && ($f=$1); /Pages inactive:\s+(\d+)/ && ($i=$1); /Pages speculative:\s+(\d+)/ && ($p=$1); END { printf("%.1fGB", ($f+$i+$p)*$s/1024/1024/1024) }')

sketchybar --set "$NAME" label="$MEMORY_USAGE"
