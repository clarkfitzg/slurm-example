files = list.files(pattern = "*.rds")

num_order = order(as.integer(gsub(".rds", "", files)))

results = lapply(files[num_order], readRDS)
