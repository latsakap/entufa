duplicates <- character()

for (c in counted_pairs$pair) {
  instances <- which(counted_pairs == c)
  if (length(instances) > 1) {
    duplicates[length(duplicates) + 1] <- c
  
  }
}