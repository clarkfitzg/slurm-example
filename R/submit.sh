#!/bin/bash -l

# All of these SBATCH options below are optional.

# Use the staclass partition. Only applies if you are in STA141C
#SBATCH --partition=staclass

# Specify which version of the software you want to use, and make it available
module load R/3.3.2

Rscript analysis.R
