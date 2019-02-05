# The command line arguments from the script
args = commandArgs(TRUE)
job_number = args[1]
seed = as.integer(args[2])

# This ensures that each simulation has an independent random number stream.
# Based off clusterSetRNGStream in R's parallel package
RNGkind("L'Ecuyer-CMRG")
if(0 < job_number){
    for(i in seq(job_number)) seed = parallel::nextRNGStream(seed)
}
set.seed(seed)

# Simulate 
result = mean(rnorm(100))

# Save the result for each run
saveRDS(result, paste0(job_number, ".rds"))
