#!/bin/bash -l

# Run your job with this command in a terminal:
#
# $ sbatch ./submit.sh

# If a line starts with #SBATCH, then it's not a comment.
# Rather, it's a flag that you pass to `sbatch`.
# There are many possible flags, see `man sbatch`.
# See `--mail-type` and `--mail-user` to get emails about status
# Change these below and add more when you go to use it.

# Name of the job
#SBATCH --job-name=Rarraytest

# Array job specifications
# This specifies 10 different jobs:
#SBATCH --array=1-10

module load R/3.3.2

# Execute each of the jobs with a different index.
# The R script will use the distinct values of SLURM_ARRAY_TASK_ID
# to do something different for each value
srun Rscript analysis.R ${SLURM_ARRAY_TASK_ID}
