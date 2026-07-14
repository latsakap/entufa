with_progress({

prog <- progressor(along = chunks)
raw_file_pairs <- foreach(z = chunks, .combine = rbind, .options.future = list(packages = "Rcpp")) %dofuture% {
  
  sourceCpp("get_data.cpp")
  chunk_pairs <- foreach(a = pairs[which(pairs %in% z)], .combine = rbind) %do% {
    
    current_data <- get_data(current_file, which(current_ngrams == a))
    current_data <- current_data[current_data$year > 1995, ]
    current_count <- foreach(b = current_data$wordcount, .combine = `+`) %do% {b}
    data.frame(pair = a, count = current_count)
  }
  prog()
  chunk_pairs
}
})