#get list of ngram files
files <- list.files("E:/NLP data/dependencies")
files <- files[-c(1:46)]

#constants
alphabet <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","=")
chunk_size <- 10000

#for each file, get ngrams,..
digraphs <- with_progress(foreach(x = files, .combine = c, .options.future = list(packages = "Rcpp")) %do% {
sourceCpp("get_ngrams.cpp")

current_file <- paste("E:/NLP data/dependencies/", x, sep = "")
print(paste(x, "...", sep = ""))

current_ngrams <- get_ngrams(current_file)
print("file loaded")

#chunk ngrams,..
chunks <- split(current_ngrams, ceiling(seq_along(current_ngrams) / chunk_size))
prog <- progressor(along = chunks)

#process chunks in parallel
file_digraphs <- foreach(y = chunks, .combine = c) %dofuture% {
  prog()
  
  #for each term where first and second letter are in alphabet, return initial digraphs
  chunk_digraphs <- foreach(z = y, .combine = c) %:% when(substr(z, 1, 1) %in% alphabet && substr(z, 2, 2) %in% alphabet) %do% {
  return(substr(z, 1, 2))
  }
  #return unique digraphs within chunk
  return(unique(chunk_digraphs))
}
#return unique digraphs within file, pasted into a single string
return(paste(unique(file_digraphs), collapse = " "))
})

#write digraphs to external file
write_lines(digraphs, "tables/digraphs")
#beep()