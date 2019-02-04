#!/bin/sh

# Use the staclass partition. Only applies if you are in STA141C
#SBATCH --partition=staclass


DATAFILE=/home/clarkf/transaction.zip

bash analysis.sh $DATAFILE
