#!/bin/bash

# Command line usage:
# $ bash first_line_zipfile.sh cars.zip
#
# After this successfully runs you should see a new file, firstline.txt

# command line argument:
ZIPFILE=$1

# Save the first line to firstline.txt
unzip -p $ZIPFILE | 
    head -n 1 > firstline.txt
