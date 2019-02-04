#!/bin/sh

# Use the staclass partition. Only applies if you are in STA141C
#SBATCH --partition=staclass

# Specific to our analysis
ZIPFILE=cars.zip

bash first_line_zipfile.sh $ZIPFILE
