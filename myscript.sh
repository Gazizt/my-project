#!/bin/bash

# Loop 1 - count from 1 to 5
echo "--- Counting ---"
for i in 1 2 3 4 5; do
    echo "Number: $i"
done

# Loop 2 - loop through a list
echo "--- Cities ---"
for CITY in Astana Almaty London Tokyo; do
    echo "City: $CITY"
done

# Loop 3 - loop through files
echo "--- Files in this folder ---"
for FILE in *; do
    echo "Found: $FILE"
done

# Loop 4 - while loop (counts down)
echo "--- Countdown ---"
COUNT=5
while [ $COUNT -gt 0 ]; do
    echo "T-minus $COUNT"
    COUNT=$((COUNT - 1))
done
echo "Liftoff! 🚀"
