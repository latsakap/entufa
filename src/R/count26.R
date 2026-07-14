#get list of ngram files
files <- list.files("F:/NLP data/dependencies")
written <- list.files("data") 
files <- c(files[47:322], files[359:854])

pairs <- read_lines("tables/pairs")
pairs1 <- read_lines("tables/pairs1")
pairs2 <- read_lines("tables/pairs2")
pairs_both <- read_lines("tables/pairs_both")
# digraphs <- read_lines("tables/digraphs")

chunk_size <- 10000

sourceCpp("get_ngrams.cpp")

with_progress(
  
  for(x in files) {
    
    if (paste0(x, ".csv") %in% written) {    
      next
    }
    
    current_file <- paste("F:/NLP data/dependencies/", x, sep = "")
    print(paste0(x, "...")) 
    
    current_ngrams <- get_ngrams(current_file)
    print("file loaded")
    
   #chunk ngrams,..
    chunks <- split(current_ngrams, ceiling(seq_along(current_ngrams) / chunk_size))
  
   #process chunks
    prog <- progressor(along = chunks)
    raw_file_pairs <- foreach(z = chunks, .combine = rbind, .options.future = list(packages = "Rcpp")) %dofuture% {
      
      sourceCpp("get_data.cpp")
      chunk_pairs <- foreach(a = pairs[which(pairs %in% z)], .combine = rbind) %do% {
        
        current_data <- get_data(current_file, which(current_ngrams == a))
        current_data <- current_data[current_data$year > 1995, ]
        current_count <- foreach(b = current_data$wordcount, .combine = `+`) %do% {b}
        if (is.numeric(current_count)) {
          data.frame(pair = a, count = current_count)
        }
      }
      
      prog()
      chunk_pairs
    }
    unique_file_pairs <- data.frame(pair = character(), count = numeric())
    for (c in raw_file_pairs$pair) {
      instances <- which(raw_file_pairs$pair == c)
      if (!c %in% unique_file_pairs$pair) {
        if (length(instances) > 1) {
          combined <- data.frame(pair = c, count = sum(raw_file_pairs$count[instances]))
          unique_file_pairs <- rbind(unique_file_pairs, combined)
        } else {
          unique_file_pairs <- rbind(unique_file_pairs, data.frame(pair = c, count = raw_file_pairs$count[instances]))
        }
      }
    }
    
    write_csv(unique_file_pairs, paste0("data/", x, ".csv"))
#   ntfy_send(message = paste0(x, " complete"), topic = "latsakap")
    beep()
    
    gc()
    
  }
)

#ntfy_send(message = "count run complete", topic = "latsakap")
beep("fanfare")