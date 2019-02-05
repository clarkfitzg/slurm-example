#!/bin/bash -l

# From https://wiki.cse.ucdavis.edu/support/systems/gauss
 
# For STA141C students
#SBATCH --partition=staclass

# Name of the job - you'll probably want to customize this.
#SBATCH --job-name=Rarraytest

# Array job specifications:
#SBATCH --array=1-10

# Email notifications (optional), type=BEGIN, END, FAIL, ALL
# Uncomment, if desired:
# #SBATCH --mail-type=ALL
# #SBATCH --mail-user=jimsemail@ucdavis.edu

module load R/3.3.2

# Execute each of the jobs with a different index (the R script will then process
# this to do something different for each index):
srun Rscript analysis.R ${SLURM_ARRAY_TASK_ID}
