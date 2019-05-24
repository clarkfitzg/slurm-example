# Seed the random number generator to make results reproducible
iseed = 37

# The command line arguments from the script
args = commandArgs(TRUE)
job_number = as.integer(args[1])

message("Using random number stream ", job_number)

# This ensures that each simulation has an independent random number stream.
# Based off clusterSetRNGStream in R's parallel package
RNGkind("L'Ecuyer-CMRG")
set.seed(iseed)
seed_tmp = .Random.seed
for(i in seq(job_number)) seed_tmp = parallel::nextRNGStream(seed_tmp)
.Random.seed = seed_tmp

# Simulate 
result = mean(rnorm(100))

message(result)

# Save the result for each run
saveRDS(result, paste0(job_number, ".rds"))

