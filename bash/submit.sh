#!/bin/sh

# Use the staclass partition. Only applies if you are in STA141C
#SBATCH --partition=staclass

# Specific to our analysis
DATAFILE=/home/clarkf/transaction.zip

bash header.sh $DATAFILE
