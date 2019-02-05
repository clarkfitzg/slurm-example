#!/bin/bash -l

# From https://wiki.cse.ucdavis.edu/support/systems/gauss
 
###############################################################################
##
## Submit as:
## 
##    sbatch ./submit.sh
## 
##
###############################################################################

# For STA141C students
#SBATCH --partition=staclass

# Name of the job - you'll probably want to customize this.
#SBATCH --job-name=jimsjob

# Array job specifications:
#SBATCH --array=1-10

# Email notifications (optional), type=BEGIN, END, FAIL, ALL
# Uncomment, if desired:
# #SBATCH --mail-type=ALL
# #SBATCH --mail-user=jimsemail@ucdavis.edu

# Standard out and Standard Error output files with the job number in the name.
# #SBATCH -o conv_%j.out
# #SBATCH -e conv_%j.err

# Execute each of the jobs with a different index (the R script will then process
# this to do something different for each index):

module load R/3.3.2

RANDOM_SEED=37

srun Rscript analysis.R ${SLURM_ARRAY_TASK_ID} ${RANDOM_SEED}
