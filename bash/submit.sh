#!/bin/bash -l

# Use the staclass partition. Only applies if you are in STA141C
#SBATCH --partition=staclass

# Give the job a name
#SBATCH --job-name=bashtest

# Specific to our analysis
ZIPFILE=cars.zip

bash first_line_zipfile.sh $ZIPFILE
