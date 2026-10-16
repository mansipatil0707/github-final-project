#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (Principal x Rate x Time) / 100

echo "Enter principal amount:"
read principal
echo "Enter rate of interest (% per year):"
read rate
echo "Enter time (in years):"
read time

si=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p*r*t)/100 }')
echo "Simple Interest = $si"
