#get list of ngram files
files <- list.files("E:/NLP data/dependencies")
#files <- files[-c(1:46)]
alphabet <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z", "=")

files <- files[47]

counted_pairs <- foreach(x = files, .combine = rbind, .errorhandling = "remove", .packages = c("tibble", "Rcpp")) %do% {
sourceCpp("get_ngrams.cpp")

current_file <- paste("E:/NLP data/dependencies/", x, sep = "")
current_ngrams <- get_ngrams(current_file)
print(paste(x, "...", sep = ""))

current_letters <- vector(mode = "character", length = 0L)

for (y in current_ngrams) {
if (substr(y, 1, 1) %in% alphabet && substr(y, 2, 2) %in% alphabet && !substr(y, 1, 2) %in% current_letters) {
current_letters[length(current_letters) + 1] <- substr(y, 1, 2) 
}}
print(current_letters)

#current_pairs <- tibble(pair = vector(mode = "character", length = 0L), count = vector(mode = "integer", length = 0L)) 

n <- 0
current_pairs <- foreach(z = pairs, .combine = rbind, .errorhandling = "remove", .packages = c("tibble", "Rcpp")) %do% {
sourceCpp("get_data.cpp")
if (! substr(z, 1, 2) %in% current_letters) {
stop()
} 
if (z %in% current_ngrams) {
print(paste("MATCH FOUND:", z))
n <- n + 1
current_data <- get_data(current_file, which(current_ngrams == z))
current_data <- current_data[current_data$year > 1995, ]
current_count <- sum(current_data$wordcount)
print(paste("count:", current_count))
current_result <- c(z, current_count)
} else {
stop()
}
return(current_result)
}
print(paste(n, "matches found"))
return(current_pairs)
}
