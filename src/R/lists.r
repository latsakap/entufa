# Probabilisticalize Grammar
# by Filomena Rocca a.k.a La Tsakap
# Created Mar. 17, 2025
# Edited Mar. 20, 2025
# This script starts with a lexicon in Nearley format and the Google Ngrams dependency data.
# The goal is to produce a list of all syntactic pairs to be referred to during parsing.

rm(list = ls())

library(readr)
library(Rcpp)
library(tibble)
library(dplyr)
sourceCpp("get_ngrams.cpp")
sourceCpp("get_data.cpp")

#parse lexicon
lexicon <- read_table("../dictionary3.ne")
lexicon$`#POS` <- factor(lexicon$`#POS`)

#remove quotes
i <- 1
words <- c("")
while (i <= length(lexicon$`#WORD`)) {
words[i] <- gsub("\"", "", lexicon$`#WORD`[i])
i <- i + 1
}

#add reformatted part of speech tags
i <- 1
POS <- c(0)
while (i <= length(lexicon$`#POS`)) {
if (lexicon$`#POS`[i] == "noun") {
POS[i] <- "NOUN"
} else if (lexicon$`#POS`[i] == "copula" || lexicon$`#POS`[i] == "infinitive_copula" || lexicon$`#POS`[i] == "past_participle_copula" || lexicon$`#POS`[i] == "verb" || lexicon$`#POS`[i] == "infinitive" || lexicon$`#POS`[i] == "past_participle") {
POS[i] <- "VERB"
} else if (lexicon$`#POS`[i] == "adjective" || lexicon$`#POS`[i] == "quantifier") {
POS[i] <- "ADJ"
} else if (lexicon$`#POS`[i] == "adverb") {
POS[i] <- "ADV"
} else if (lexicon$`#POS`[i] == "pronoun" || lexicon$`#POS`[i] == "interrogative" || lexicon$`#POS`[i] == "possessive") {
POS[i] <- "PRON"
} else if (lexicon$`#POS`[i] == "determiner") {
POS[i] <- "DET"
} else if (lexicon$`#POS`[i] == "preposition") {
POS[i] <- "ADP"
} else if (lexicon$`#POS`[i] == "coordinating_conjunction" || lexicon$`#POS`[i] == "subordinating_conjunction") {
POS[i] <- "CONJ"
} else {
POS[i] <- "PRT"
}
i <- i + 1
}

#create a table from the formatted info
word_list <- tibble(word = words, pos = factor(POS))
word_list <- distinct(word_list)

#initialize syntactic pairs tibbles
pairs <- tibble(pair = "init", count = 0L)
pairs_1 <- tibble(pair = "init", count = 0L)
pairs_2 <- tibble(pair = "init", count = 0L)
pairs_both <- tibble(pair = "init", count = 0L)

#generate a list of all possible pairs, no POS labels
for (x in word_list$word) {
for (y in word_list$word) {
current <- tibble(pair = paste(x, "=>", y, sep = ""), count = 0L)
pairs <- bind_rows(pairs, current)
}}

#clean pairs
pairs <- pairs[-1, ]
pairs <- distinct(pairs)

#generate a list of pairs, first term labelled
i <- 1
for (x in word_list$word) {
j <- 1
for (y in word_list$word) {
current <- tibble(pair = paste(x, "_", word_list$pos[i], "=>", y, sep = ""), count = 0L)
pairs_1 <- bind_rows(pairs_1, current)
j <- j + 1
}
i <- i + 1
}

#clean pairs
pairs_1 <- pairs_1[-1, ]
pairs_1 <- distinct(pairs_1)

#generate a list of pairs, second term labelled
i <- 1
for (x in word_list$word) {
j <- 1
for (y in word_list$word) {
current <- tibble(pair = paste(x, "=>", y, "_", word_list$pos[j], sep = ""), count = 0L)
pairs_2 <- bind_rows(pairs_2, current)
j <- j + 1
}
i <- i + 1
}

#clean pairs
pairs_2 <- pairs_2[-1, ]
pairs_2 <- distinct(pairs_2)

#generate a list of fully labelled pairs
i <- 1
for (x in word_list$word) {
j <- 1
for (y in word_list$word) {
current <- tibble(pair = paste(x, "_", word_list$pos[i], "=>", y, "_", word_list$pos[j], sep = ""), count = 0L)
pairs_both <- bind_rows(pairs_both, current)
j <- j + 1
}
i <- i + 1
}

#clean labelled_pairs
pairs_both <- pairs_both[-1, ]
pairs_both <- distinct(pairs_both)
