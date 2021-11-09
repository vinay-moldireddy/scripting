#!/bin/bash

# This generates a list of random numbers 

# A random number as password 
PASSWORD="${RANDOM}" 
echo "${PASSWORD}"

# Three random numbers togater. 
PASSWORD="${RANDOM}${RANDOM}${RANDOM}" 
echo "${PASSWORD}"

# Use the current date/time as the basis for the password 
PASSWORD=$(date +%s) 
echo "${PASSWORD}"


PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

