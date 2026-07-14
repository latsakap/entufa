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
pairs <- foreach(x = word_list$word, .combine = c) %:% foreach(y = word_list$word, .combine = c) %dofuture% {
paste(x, "=>", y, sep = "")
}
pairs <- unique(pairs)
write_lines(pairs, "tables/pairs")

pairs1 <- foreach(x = word_list$word, a = word_list$pos, .combine = rbind) %:% foreach(y = word_list$word, .combine = rbind) %dofuture% {
paste(x, "_", a, "=>", y, sep = "")
}
pairs1 <- unique(pairs1)
write_lines(pairs1, "tables/pairs1")

pairs2 <- foreach(x = word_list$word, .combine = c) %:% foreach(y = word_list$word, b = word_list$pos, .combine = c) %dofuture% {
paste(x, "=>", y, "_", b, sep = "")
}
pairs2 <- unique(pairs2)
write_lines(pairs2, "tables/pairs2")

pairs_both <- foreach(x = word_list$word, a = word_list$pos, .combine = c) %:% foreach(y = word_list$word, b = word_list$pos, .combine = c) %dofuture% {
paste(x, "_", a, "=>", y, "_", b, sep = "")
}
write_lines(pairs_both, "tables/pairs_both")