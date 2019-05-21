#!/bin/bash -l

# Run your job with this command in a terminal:
#
# $ sbatch ./submit.sh

# If a line starts with #SBATCH, then it's not a comment.
# Rather, it's a flag that you pass to `sbatch`.
# There are many possible flags, see `man sbatch`.
# See `--mail-type` and `--mail-user` to get emails about status
# Change these below and add more when you go to use it.

# Give the job a name
#SBATCH --job-name=bashtest

# Using bash is as simple as it gets- 
# we don't need any `module load` commands

# Specific to our analysis
ZIPFILE=cars.zip

bash first_line_zipfile.sh ${ZIPFILE}
