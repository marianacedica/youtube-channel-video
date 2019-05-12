#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
    filename=$line".csv"
    node youtube-channel-video.js $line > latest/$filename
done < "$1"