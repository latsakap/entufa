#get list of ngram files
files <- list.files("E:/NLP data/dependencies")
files <- files[-c(1:46)]

#append count info to pairs
alphabet <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")

for (x in files) {

current_file <- paste("E:/NLP data/dependencies/", x, sep = "")
print(paste(x, "...", sep = ""))

current_ngrams <- get_ngrams(current_file)
current_letters <- c()

for (x in current_ngrams) {
if (substr(x, 1, 1) %in% alphabet && substr(x, 2, 2) %in% alphabet && !substr(x, 1, 2) %in% current_letters) {
current_letters[length(current_letters) + 1] <- substr(x, 1, 2) 
}}

i <- 1
while (i <= length(pairs$pair)) {
if (substr(pairs$pair[i], 1, 2) %in% current_letters) {
if (pairs$pair[i] %in% current_ngrams) {
#print(pairs$pair[i])
current_data <- get_data(current_file, which(current_ngrams == pairs$pair[i]))
current_data <- current_data[current_data$year > 1995, ]
j <- 1
current_count <- 0
while (j <= length(current_data$wordcount)) {
current_count <- current_count + current_data$wordcount[j]
j <- j + 1
}
#print(current_count)
pairs$count[i] <- pairs$count[i] + current_count
}}
i <- i + 1
}
}

print("all files complete")

write.table(pairs, "pairs", row.names = FALSE)

print("pairs exported")