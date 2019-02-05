# slurm

This repository contains materials to use the campus compute clusters with R.

The directories contain the following minimal working examples of jobs:

- bash: Process data in bash
- R: One single R script
- arrayR: Array job with R

Each has their own `submit.sh` script.
Run them from a cluster with:

```
sbatch ./submit.sh
```
