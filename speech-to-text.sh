#!/bin/bash

# Start PocketSphinx for real-time speech-to-text
pocketsphinx_continuous -inmic yes 2>/dev/null | while read -r line; do
    # Use xdotool to type the recognized text and send it as if pressing Enter
    xdotool type "$line"
    xdotool key Return
    # Uncomment below to debug recognized text line by line
    # echo "DEBUG: $line"
done
