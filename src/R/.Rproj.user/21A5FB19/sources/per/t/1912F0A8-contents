
files <- list.files("F:/GitHub/entufa/src/R/data") 
#files <- files[1:3]

raw_list <- foreach(x = files, .combine = rbind) %do% {
  
  read.csv(paste0("F:/GitHub/entufa/src/R/data/", x))
  
}

unique_list <- data.frame(pair = character(), count = numeric())

for (c in raw_list$pair) {
  instances <- which(raw_list$pair == c)
  if (!c %in% unique_list$pair) {
    if (length(instances) > 1) {
      combined <- data.frame(pair = c, count = sum(raw_list$count[instances]))
      unique_list <- rbind(unique_list, combined)
    } else {
      unique_list <- rbind(unique_list, data.frame(pair = c, count = raw_list$count[instances]))
    }
  }
}