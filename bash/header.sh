#!/bin/bash

# Command line usage:
# $ bash header.sh some_file.csv

# This comes in as a command line argument
DATAFILE=$1

# Save the first line to header.csv
unzip -p $DATAFILE | 
    head -n 1 > header.csv
