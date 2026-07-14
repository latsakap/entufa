#get list of ngram files
files <- list.files("F:/NLP data/dependencies")
#files <- files[47:854]
files <- files[48:50]

pairs <- read_lines("tables/pairs")
pairs1 <- read_lines("tables/pairs1")
pairs2 <- read_lines("tables/pairs2")
pairs_both <- read_lines("tables/pairs_both")
digraphs <- read_lines("tables/digraphs")

chunk_size <- 10000

counted_pairs <- with_progress(foreach(x = files, .combine = rbind, .options.future = list(packages = "Rcpp")) %do% {
  sourceCpp("get_ngrams.cpp")
  
  current_file <- paste("F:/NLP data/dependencies/", x, sep = "")
  print(paste(x, "...", sep = ""))
  
  current_ngrams <- get_ngrams(current_file)
  print("file loaded")
  
  #chunk ngrams,..
  chunks <- split(current_ngrams, ceiling(seq_along(current_ngrams) / chunk_size))
  
  #process chunks
  prog <- progressor(along = chunks)
  raw_file_pairs <- foreach(z = chunks, .combine = rbind, .options.future = list(packages = "Rcpp")) %dofuture% {
  chunk_pairs <- foreach(a = pairs[which(pairs %in% z)], .combine = rbind, .options.future = list(packages = "Rcpp")) %do% {
    sourceCpp("get_data.cpp")
    current_data <- get_data(current_file, which(current_ngrams == a))
    current_data <- current_data[current_data$year > 1995, ]
    current_count <- foreach(b = current_data$wordcount, .combine = `+`) %do% {b}
    data.frame(pair = a, count = current_count)
  }
  prog()
  }
  unique_file_pairs <- data.frame(pair = character(), count = numeric())
  for (c in raw_file_pairs$pair) {
    instances <- which(raw_file_pairs$pair == c)
    if (length(instances) > 1 && !c %in% unique_file_pairs$pair) {
      combined <- data.frame(pair = c, count = sum(raw_file_pairs$count[instances]))
      unique_file_pairs <- rbind(unique_file_pairs, combined)
    }
  }
write_csv(unique_file_pairs, paste0("F:/GitHub/entufa/src/R/tables/", x, ".csv"))
})

ntfy_send(message = "test run complete", topic = "latsakap")