#!/bin/bash

# Replace these with your actual sink names
SINK1="input your audio device here"
SINK2="input your second audio device here"

CURRENT_SINK=$(pactl info | grep "Default Sink" | awk '{print $3}')

if [ "$CURRENT_SINK" == "$SINK1" ]; then
  pactl set-default-sink "$SINK2"
  NEW_SINK="$SINK2"
else
  pactl set-default-sink "$SINK1"
  NEW_SINK="$SINK1"
fi

# Move current audio streams to the new sink
for INPUT in $(pactl list short sink-inputs | cut -f1); do
  pactl move-sink-input "$INPUT" "$NEW_SINK"
done
