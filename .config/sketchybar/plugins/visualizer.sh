#!/bin/bash

# Define the bar characters
BARS=( " " "▂" "▃" "▄" "▅" "▆" "▇" "█" )

# Kill existing
pkill -f "cava -p /Users/user/.config/cava/config_sketchybar"

# Start cava and read output
# Force absolute paths
/opt/homebrew/bin/cava -p "$HOME/.config/cava/config_sketchybar" | while read -r line; do
  output=""
  IFS=';' read -ra ADDR <<< "$line"
  for i in "${ADDR[@]}"; do
    if [[ $i =~ ^[0-7]$ ]]; then
      output+="${BARS[$i]}"
    fi
  done
  if [ -n "$output" ]; then
    /opt/homebrew/bin/sketchybar --set visualizer label="$output"
  fi
done
