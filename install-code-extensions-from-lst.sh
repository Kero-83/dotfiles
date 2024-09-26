#!/bin/env bash
# Check if the first argument is missing
if [ -z "$1" ]; then
    echo "Error: No argument provided."
    exit 1
fi
lst=$1
for line in $(cat $lst); do
    code --install-extension $line
done

