#!/bin/bash
# Script to calculate simple interest

echo "Enter the principal amount:"
read p
echo "Enter the annual rate of interest:"
read r
echo "Enter the time period in years:"
read t

# Simple Interest Formula: SI = (P * T * R) / 100
s=$(echo "scale=2; $p * $t * $r / 100" | bc -l 2>/dev/null || expr $p \* $t \* $r / 100)

echo "The Simple Interest is: $s"
