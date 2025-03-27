#parse lexicon
lexicon <- read_table("../dictionary3.ne")
lexicon$`#POS` <- factor(lexicon$`#POS`)

#remove quotes
words <- foreach(x = lexicon$`#WORD`, .combine = c) %dofuture% {gsub("\"", "", x)}

#add reformatted part of speech tags
POS <- foreach(x = lexicon$`#POS`, .combine = c) %dofuture% {
if (x == "noun") {
"NOUN"
} else if (x == "copula" || x == "infinitive_copula" || x == "past_participle_copula" || x == "verb" || x == "infinitive" || x == "past_participle") {
"VERB"
} else if (x == "adjective" || x == "quantifier") {
"ADJ"
} else if (x == "adverb") {
"ADV"
} else if (x == "pronoun" || x == "interrogative" || x == "possessive") {
"PRON"
} else if (x == "determiner") {
"DET"
} else if (x == "preposition") {
"ADP"
} else if (x == "coordinating_conjunction" || x == "subordinating_conjunction") {
"CONJ"
} else {
"PRT"
}}
POS <- factor(POS)

#create a table from the formatted info
word_list <- tibble(word = words, pos = POS)
word_list <- distinct(word_list)

#generate lists of all possible pairs
pairs <- foreach(x = word_list$word, .combine = rbind) %:% foreach(y = word_list$word, .combine = rbind) %dofuture% {
data.frame(pair = paste(x, "=>", y, sep = ""), count = 0L)
}
pairs <- tibble(unique(pairs))

pairs1 <- foreach(x = word_list$word, a = word_list$pos, .combine = rbind) %:% foreach(y = word_list$word, .combine = rbind) %dofuture% {
data.frame(pair = paste(x, "_", a, "=>", y, sep = ""), count = 0L)
}
pairs1 <- tibble(unique(pairs1))

pairs2 <- foreach(x = word_list$word, .combine = rbind) %:% foreach(y = word_list$word, b = word_list$pos, .combine = rbind) %dofuture% {
data.frame(pair = paste(x, "=>", y, "_", b, sep = ""), count = 0L)
}
pairs2 <- tibble(unique(pairs2))

pairs_both <- foreach(x = word_list$word, a = word_list$pos, .combine = rbind) %:% foreach(y = word_list$word, b = word_list$pos, .combine = rbind) %dofuture% {
data.frame(pair = paste(x, "_", a, "=>", y, "_", b, sep = ""), count = 0L)
}
pairs_both <- tibble(pairs_both)