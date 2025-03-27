text -> sentence # | fragment

sentence -> (copula_base_sA copula_tail_sA | copula_base_pA copula_tail_pA | copula_base_sI copula_tail_sI | copula_base_pI copula_tail_pI | negative_copula_base copula_tail_x
| verb_2o_base verb_2o_tail) (_ prepositional_phrase):? (_ symmetrical_conjuntion _ sentence):?

fragment -> noun_phrase_sA | noun_phrase_sI | noun_phrase_pA | noun_phrase_pI

#SENTENCE BASE

copula_base -> copula_base_sA | copula_base_pA | copula_base_sI | copula_base_sA
negative_copula_base -> negative_copula_base_sA | negative_copula_base_pA | negative_copula_base_sI | negative_copula_base_pI

copula_base_sA -> 1s_copula_base | 2s_copula_base | 3sA_copula_base 
copula_base_pA -> 1p_copula_base | 2p_copula_base | 3pA_copula_base
copula_base_sI -> 3sI_copula_base 
copula_base_pI -> 3pI_copula_base

negative_copula_base_sA -> 1s_negative_copula_base | 2s_negative_copula_base | 3sA_negative_copula_base 
negative_copula_base_pA -> 1p_negative_copula_base | 2p_negative_copula_base | 3pA_negative_copula_base
negative_copula_base_sI -> 3sI_negative_copula_base 
negative_copula_base_pI -> 3pI_negative_copula_base

1s_copula_base -> 1ss _ 1s_copula
1p_copula_base -> 1ps _ 1p_copula
2s_copula_base -> 2ss _ 2s_copula
2p_copula_base -> 2ps _ 2p_copula
3sA_copula_base -> (demonstrative_s | 3ssF | 3ssM | 3ssI | noun_phrase_sA) _ 3s_copula | 3ssN _ 3p_copula
3pA_copula_base -> (demonstrative_p | 3ps | noun_phrase_pA) _ 3p_copula
3sI_copula_base -> (demonstrative_s | 3ssI | noun_phrase_sI) _ 3s_copula
3pI_copula_base -> (demonstrative_p | 3ps | noun_phrase_pI) _ 3p_copula

1s_negative_copula_base -> 1ss _ 1s_negative_copula
1p_negative_copula_base -> 1ps _ 1p_negative_copula
2s_negative_copula_base -> 2ss _ 2s_negative_copula
2p_negative_copula_base -> 2ps _ 2p_negative_copula
3sA_negative_copula_base -> (demonstrative_s | 3ssF | 3ssM | 3ssI | noun_phrase_sA) _ 3s_negative_copula | 3ssN _ 3p_negative_copula
3pA_negative_copula_base -> (demonstrative_p | 3ps | noun_phrase_pA) _ 3p_negative_copula
3sI_negative_copula_base -> (demonstrative_s | 3ssI | noun_phrase_sI) _ 3s_negative_copula
3pI_negative_copula_base -> (demonstrative_p | 3ps | noun_phrase_pI) _ 3p_negative_copula

verb_2o_base -> 1s_verb_2o_base | 1p_verb_2o_base | 2s_verb_2o_base | 2p_verb_2o_base | 3sA_verb_2o_base | 3pA_verb_2o_base | 3sI_verb_2o_base | 3pI_verb_2o_base
| 1s_negative_verb_2o_base | 1p_negative_verb_2o_base | 2s_negative_verb_2o_base | 2p_negative_verb_2o_base | 3sA_negative_verb_2o_base | 3pA_negative_verb_2o_base | 3sI_negative_verb_2o_base | 3pI_negative_verb_2o_base

1s_verb_2o_base -> 1ss _ verb_2o_1s
1p_verb_2o_base -> 1ps _ verb_2o_1p
2s_verb_2o_base -> 2ss _ verb_2o_2s
2p_verb_2o_base -> 2ps _ verb_2o_2p
3sA_verb_2o_base -> (demonstrative_s | 3ssF | 3ssM | 3ssI | noun_phrase_sA) _ verb_2o_3s | 3ssN _ verb_2o_3s
3pA_verb_2o_base -> (demonstrative_p | 3ps | noun_phrase_pA) _ verb_2o_3p
3sI_verb_2o_base -> (demonstrative_s | 3ssI | noun_phrase_sI) _ verb_2o_3sI
3pI_verb_2o_base -> (demonstrative_p | 3ps | noun_phrase_pI) _ verb_2o_3pI

1s_negative_verb_2o_base -> 1ss _ negative_verb_2o_1s
1p_negative_verb_2o_base -> 1ps _ negative_verb_2o_1p
2s_negative_verb_2o_base -> 2ss _ negative_verb_2o_2s
2p_negative_verb_2o_base -> 2ps _ negative_verb_2o_2p
3sA_negative_verb_2o_base -> (demonstrative_s | 3ssF | 3ssM | 3ssI | noun_phrase_sA) _ negative_verb_2o_3s | 3ssN _ negative_verb_2o_3p
3pA_negative_verb_2o_base -> (demonstrative_p | 3ps | noun_phrase_pA) _ negative_verb_2o_3p
3sI_negative_verb_2o_base -> (demonstrative_s | 3ssI | noun_phrase_sI) _ negative_verb_2o_3sI
3pI_negative_verb_2o_base -> (demonstrative_p | 3ps | noun_phrase_pI) _ negative_verb_2o_3pI

#SENTENCE TAIL

copula_tail -> copula_tail_p | copula_tail_s

copula_tail_s -> copula_tail_sA | copula_tail_sI
copula_tail_p -> copula_tail_pA | copula_tail_pI

copula_tail_x ->  _ (adjective_phrase   | adjectival_AS_phrase    | noun_phrase    | pronoun_xo  | demonstrative   | prepositional_phrase_N)
copula_tail_sA -> _ (adjective_phrase   | adjectival_AS_phrase_sA | noun_phrase_sA | pronoun_soA | demonstrative_s | prepositional_phrase_N)
copula_tail_pA -> _ (adjective_phrase   | adjectival_AS_phrase_pA | noun_phrase_pA | pronoun_poA | demonstrative_p | prepositional_phrase_N)
copula_tail_sI -> _ (adjective_phrase_I | adjectival_AS_phrase_sI | noun_phrase_sI | pronoun_soI | demonstrative_s | prepositional_phrase_N)
copula_tail_pI -> _ (adjective_phrase_I | adjectival_AS_phrase_pI | noun_phrase_pI | pronoun_poI | demonstrative_p | prepositional_phrase_N)

verb_2o_tail -> _ (noun_phrase | pronoun_xo)

#PRONOUNS

possessive1 -> 1sp1 | 1pp1 | 2sp1 | 2pp1 | 3spM1 | 3spF1 | 3spN1 | 3spI1 | 3pp1
possessive2 -> 1sp2 | 1pp2 | 2sp2 | 2pp2 | 3spM2 | 3spF2 | 3spN2 | 3spI2 | 3pp2

pronoun_xo -> pronoun_soA | pronoun_soI | pronoun_poA | pronoun_poI

pronoun_soA -> 1so | 2so | 3soF | 3soN | 3soM | 3soI
pronoun_soI -> 3soI
pronoun_poA -> 1po | 2po | 3po
pronoun_poI -> 3po 

#NOUNS

noun_phrase -> noun_phrase_A | noun_phrase_I

noun_phrase_A -> noun_phrase_sA | noun_phrase_pA
noun_phrase_I -> noun_phrase_sI | noun_phrase_pI

noun_phrase_sA -> (possessive2 | A _ (A_noun_sA | A_adjectives   _ noun_sA) | AN _ (AN_noun_sA | AN_adjectives   _ noun_sA) | (THE | possessive1 | demonstrative_s) _ (adjectives   _):? noun_sA) (_ OF_phrase):? (_ prepositional_phrase_N):? (_ property_subclause_sA):?
noun_phrase_sI -> (possessive2 | A _ (A_noun_sI | A_adjectives_I _ noun_sI) | AN _ (AN_noun_sI | AN_adjectives_I _ noun_sI) | (THE | possessive1 | demonstrative_s) _ (adjectives_I _):? noun_sI) (_ OF_phrase):? (_ prepositional_phrase_N):? (_ property_subclause_sI):?
noun_phrase_pI -> (possessive2 | ((THE | possessive1 | demonstrative_p) _):? (adjectives_I _):? noun_pI) (_ OF_phrase):? (_ prepositional_phrase_N):? (_ property_subclause_pI):?
noun_phrase_pA -> (possessive2 | ((THE | possessive1 | demonstrative_p) _):? (adjectives   _):? noun_pA) (_ OF_phrase):? (_ prepositional_phrase_N):? (_ property_subclause_pA):?

noun_sA -> A_noun_sA | AN_noun_sA
noun_pA -> A_noun_pA | AN_noun_pA
noun_sI -> A_noun_sI | AN_noun_sI
noun_pI -> A_noun_pI | AN_noun_pI

A_noun_sA -> "person" | "boss" | "girl"
AN_noun_sA -> "uncle" | "aunt"
A_noun_pA -> "people" | "bosses"
AN_noun_pA -> "uncles" | "aunts"
A_noun_sI -> "banana" | "book"
AN_noun_sI -> "apple" | "eye"
A_noun_pI -> "bananas" | "books"
AN_noun_pI -> "apples" | "eyes" | "oranges"

#VERBS

verb_2o_1s -> verb_2o_1s_pres | verb_2o_1s_past | WILL _ verb_2o_infinitive
verb_2o_1p -> verb_2o_1p_pres | verb_2o_1p_past | WILL _ verb_2o_infinitive
verb_2o_2s -> verb_2o_2s_pres | verb_2o_2s_past | WILL _ verb_2o_infinitive
verb_2o_2p -> verb_2o_2p_pres | verb_2o_2p_past | WILL _ verb_2o_infinitive
verb_2o_3sI -> verb_2o_3sI_pres | verb_2o_3sI_past | WILL _ verb_2o_I_infinitive
verb_2o_3pI -> verb_2o_3pI_pres | verb_2o_3pI_past | WILL _ verb_2o_I_infinitive
verb_2o_3s -> verb_2o_3sI_pres | verb_2o_3sI_past | WILL _ verb_2o_infinitive # | verb_2o_3sA_pres | verb_2o_3sA_past
verb_2o_3p -> verb_2o_3pI_pres | verb_2o_3sI_past | WILL _ verb_2o_infinitive # | verb_2o_3pA_pres | verb_2o_3pA_past

verb_2o_infinitive -> verb_2o_I_infinitive # | verb_2o_A_infinitive 

negative_verb_2o_1s -> DO_1s_pres _ NOT _ verb_2o_infinitive | DO_1s_past _ NOT _ verb_2o_infinitive | WILL _ NOT _ verb_2o_infinitive
negative_verb_2o_1p -> DO_1p_pres _ NOT _ verb_2o_infinitive | DO_1p_past _ NOT _ verb_2o_infinitive | WILL _ NOT _ verb_2o_infinitive
negative_verb_2o_2s -> DO_2s_pres _ NOT _ verb_2o_infinitive | DO_2s_past _ NOT _ verb_2o_infinitive | WILL _ NOT _ verb_2o_infinitive
negative_verb_2o_2p -> DO_2p_pres _ NOT _ verb_2o_infinitive | DO_2p_past _ NOT _ verb_2o_infinitive | WILL _ NOT _ verb_2o_infinitive
negative_verb_2o_3sI -> DO_3s_pres _ NOT _ verb_2o_I_infinitive | DO_3s_past _ NOT _ verb_2o_infinitive | WILL _ NOT _ verb_2o_infinitive
negative_verb_2o_3pI -> DO_3p_pres _ NOT _ verb_2o_I_infinitive | DO_3p_past _ NOT _ verb_2o_infinitive | WILL _ NOT _ verb_2o_infinitive
negative_verb_2o_3s -> DO_3s_pres _ NOT _ verb_2o_infinitive | DO_3s_past _ NOT _ verb_2o_infinitive | WILL _ NOT _ verb_2o_infinitive
negative_verb_2o_3p -> DO_3p_pres _ NOT _ verb_2o_infinitive | DO_3p_past _ NOT _ verb_2o_infinitive | WILL _ NOT _ verb_2o_infinitive

#copula

1s_copula -> (BE_1s_past  | BE_1s_pres  | WILL _ BE | HAVE_1s_pres _ BE_perf | HAVE_1s_past _ BE_perf)
1p_copula -> (BE_1p_past  | BE_1p_pres  | WILL _ BE | HAVE_1p_pres _ BE_perf | HAVE_1p_past _ BE_perf)
2s_copula -> (BE_2s_past  | BE_2s_pres  | WILL _ BE | HAVE_2s_pres _ BE_perf | HAVE_2s_past _ BE_perf)
2p_copula -> (BE_2p_past  | BE_2p_pres  | WILL _ BE | HAVE_2p_pres _ BE_perf | HAVE_2p_past _ BE_perf)
3s_copula -> (BE_3s_past  | BE_3s_pres  | WILL _ BE | HAVE_3s_pres _ BE_perf | HAVE_3s_past _ BE_perf)
3p_copula -> (BE_3p_past  | BE_3p_pres  | WILL _ BE | HAVE_3p_pres _ BE_perf | HAVE_3p_past _ BE_perf)

1s_negative_copula -> (BE_1s_past _ NOT | BE_1s_pres _ NOT | WILL _ NOT _ BE | HAVE_1s_pres _ NOT _ BE_perf | HAVE_1s_past _ NOT _ BE_perf)
1p_negative_copula -> (BE_1p_past _ NOT | BE_1p_pres _ NOT | WILL _ NOT _ BE | HAVE_1p_pres _ NOT _ BE_perf | HAVE_1p_past _ NOT _ BE_perf)
2s_negative_copula -> (BE_2s_past _ NOT | BE_2s_pres _ NOT | WILL _ NOT _ BE | HAVE_2s_pres _ NOT _ BE_perf | HAVE_2s_past _ NOT _ BE_perf)
2p_negative_copula -> (BE_2p_past _ NOT | BE_2p_pres _ NOT | WILL _ NOT _ BE | HAVE_2p_pres _ NOT _ BE_perf | HAVE_2p_past _ NOT _ BE_perf)
3s_negative_copula -> (BE_3s_past _ NOT | BE_3s_pres _ NOT | WILL _ NOT _ BE | HAVE_3s_pres _ NOT _ BE_perf | HAVE_3s_past _ NOT _ BE_perf)
3p_negative_copula -> (BE_3p_past _ NOT | BE_3p_pres _ NOT | WILL _ NOT _ BE | HAVE_3p_pres _ NOT _ BE_perf | HAVE_3p_past _ NOT _ BE_perf)

#ADJECTIVES

adjectives -> A_adjectives | AN_adjectives
adjectives_I -> A_adjectives_I | AN_adjectives_I

A_adjectives -> A_adjective_phrase (_ adjective):*
AN_adjectives -> AN_adjective_phrase (_ adjective):*
A_adjectives_I -> A_adjective_I (_ adjective_I):* 
AN_adjectives_I -> AN_adjective_I (_ adjective_I):* 

adjective_phrase -> adjective_phrase_A | adjective_phrase_I

adjective_phrase_A -> A_adjective_phrase_A | AN_adjective_phrase_A
adjective_phrase_I -> A_adjective_phrase_I | AN_adjective_phrase_I

A_adjective_phrase -> A_adjective_phrase_A | A_adjective_phrase_I
AN_adjective_phrase -> AN_adjective_phrase_A | AN_adjective_phrase_I

A_adjective_phrase_A -> A_adjective_A | A_adverb _ adjective_A
A_adjective_phrase_I -> A_adjective_I | A_adverb _ adjective_I
AN_adjective_phrase_A -> AN_adjective_A | AN_adverb _ adjective_A
AN_adjective_phrase_I -> AN_adjective_I | AN_adverb _ adjective_I

adjective -> adjective_A | adjective_I

adjective_A -> A_adjective_A | AN_adjective_A
adjective_I -> A_adjective_I | AN_adjective_I

A_adjective -> A_adjective_A | A_adjective_I
AN_adjective -> AN_adjective_A | AN_adjective_I

A_adjective_A -> "smart" | "friendly" | "pretty"
A_adjective_I -> "green" | "tall" 
AN_adjective_A -> "energetic" | "angry" 
AN_adjective_I -> "amazing" | "orange" 

#ADVERBS

adverb -> A_adverb | AN_adverb

A_adverb -> "very" | "mildly" 
AN_adverb -> "unusually" | "actually"

#PREPOSITIONS

OF_phrase -> OF _ (noun_phrase | pronoun_xo)

prepositional_phrase -> prepositional_phrase_N #| prepositional_phrase_V

prepositional_phrase_N -> preposition_N _ (noun_phrase | pronoun_xo)

preposition_N -> preposition_ND | preposition_NI

#SUBCLAUSES

property_subclause_sA -> (subclause_conjunction_P _):? (copula_base_sA | verb_2o_base) | subclause_conjunction_P _ ((3s_copula | 3s_negative_copula) copula_tail_sA | (verb_2o_3s | negative_verb_2o_3s) verb_2o_tail)
property_subclause_sI -> (subclause_conjunction_P _):? (copula_base_sI | verb_2o_base) | subclause_conjunction_P _ ((3s_copula | 3s_negative_copula) copula_tail_sI | (verb_2o_3s | negative_verb_2o_3s) verb_2o_tail)
property_subclause_pA -> (subclause_conjunction_P _):? (copula_base_pA | verb_2o_base) | subclause_conjunction_P _ ((3p_copula | 3p_negative_copula) copula_tail_pA | (verb_2o_3p | negative_verb_2o_3p) verb_2o_tail)
property_subclause_pI -> (subclause_conjunction_P _):? (copula_base_pI | verb_2o_base) | subclause_conjunction_P _ ((3p_copula | 3p_negative_copula) copula_tail_pI | (verb_2o_3p | negative_verb_2o_3p) verb_2o_tail)

#COMPARATIVE PHRASES

adjectival_AS_phrase -> adjectival_AS_phrase_sA | adjectival_AS_phrase_sI | adjectival_AS_phrase_pA | adjectival_AS_phrase_pI

adjectival_AS_phrase_sA -> AS_comparative _ adjective_I _ AS_comparative _ noun_phrase | AS_comparative _ adjective_A _ AS_comparative _ noun_phrase_A
adjectival_AS_phrase_pA -> AS_comparative _ adjective_I _ AS_comparative _ noun_phrase | AS_comparative _ adjective_A _ AS_comparative _ noun_phrase_A
adjectival_AS_phrase_sI -> AS_comparative _ adjective_I _ AS_comparative _ noun_phrase
adjectival_AS_phrase_pI -> AS_comparative _ adjective_I _ AS_comparative _ noun_phrase

#: adverbial_AS_phrase

demonstrative -> demonstrative_p | demonstrative_s

#whitespace
_ -> " "

###THE BIG DICTIONARY###

#a
A -> "a"

#am
BE_1s_pres -> "am"

#an
AN -> "an"

#and
symmetrical_conjuntion -> "and"

#as
AS_comparative -> "as"
preposition_ND -> "as"
preposition_VD -> "as"

#are
BE_1p_pres -> "are"
BE_2s_pres -> "are"
BE_2p_pres -> "are"
BE_3p_pres -> "are"

#at
preposition_ND -> "at"

#baking
A_purpose_adjective -> "baking"

#be
BE -> "be"

#been
BE_perf -> "been"

#being
BE_ING -> "being"

#big
A_size_adjective -> "big"

#by
preposition_NI -> "by"

#did
DO_1s_past -> "did"
DO_1p_past -> "did"
DO_2s_past -> "did"
DO_2p_past -> "did"
DO_3s_past -> "did"
DO_3p_past -> "did"

#do
DO -> "do"
DO_1s_pres -> "do"
DO_1p_pres -> "do"
DO_2s_pres -> "do"
DO_2p_pres -> "do"
DO_3p_pres -> "do"

#does
DO_3s_pres -> "does"

#doing

#done

#good
A_opinion_adjective -> "good"

#for
preposition_ND -> "for"

#had
HAVE_1s_past -> "had"
HAVE_1p_past -> "had"
HAVE_2s_past -> "had"
HAVE_2p_past -> "had"
HAVE_3s_past -> "had"
HAVE_3p_past -> "had"

verb_2o_1s_past -> "had"
verb_2o_1p_past -> "had"
verb_2o_2s_past -> "had"
verb_2o_2p_past -> "had"
verb_2o_3sI_past -> "had"
verb_2o_3pI_past -> "had"

#has
HAVE_3s_pres -> "has"
verb_2o_3sI_pres -> "has"

#have
HAVE -> "have"
HAVE_1s_pres -> "have"
HAVE_1p_pres -> "have"
HAVE_2s_pres -> "have"
HAVE_2p_pres -> "have"
HAVE_3p_pres -> "have"
verb_2o_I_infinitive -> "have"
verb_2o_1s_pres -> "have"
verb_2o_1p_pres -> "have"
verb_2o_2s_pres -> "have"
verb_2o_2p_pres -> "have"
verb_2o_3pI_pres -> "have"

#he
3ssM -> "he"

#her
3soF -> "her"
3spF1 -> "her"

#hers
3spF2 -> "hers"

#herself
3srF -> "herself"

#him
3soM -> "him"

#himself
3srM -> "himself"

#his
3spM1 -> "his"
3spM2 -> "his"

#i
1ss -> "i"

#in
preposition_NI -> "in"

#is
BE_3s_pres -> "is"

#it
3ssI -> "it"
3soI -> "it"

#its
3spI1 -> "its"
3spI2 -> "its"

#itself
3srI -> "itself"

#me
1so -> "me"

#mine
1sp2 -> "mine"

#my
1sp1 -> "my"

#myself
1sr -> "myself"

#not
NOT -> "not" 

#of
OF -> "of"

#on
preposition_NI -> "on"

#or
symmetrical_conjuntion -> "or"

#orange
AN_noun_sI -> "orange"
AN_color_adjective -> "orange"

#our
1pp1 -> "our"

#ours
1pp2 -> "ours"

#ourselves
1pr -> "ourselves"

#round
A_shape_adjective -> "round"

#she
3ssF -> "she"

#soft
A_physical_adjective -> "soft"

#that
demonstrative_s -> "that"
subclause_conjunction_P -> "that"

#the
THE -> "the"

#their
3spN1 -> "their"
3pp1 -> "their"

#theirs
3spN2 -> "theirs"
3pp2 -> "theirs"

#them
3soN -> "them"
3po -> "them"

#themself
3srN -> "themself"

#themselves
3pr -> "themselves"

#these
demonstrative_p -> "these"

#they
3ssN -> "they"
3ps -> "they"

#this
demonstrative_s -> "this"

#those
demonstrative_p -> "those"

#to
TO -> "to"
preposition_VD -> "to"

#us
1po -> "us"

#was
BE_1s_past -> "was"
BE_3s_past -> "was"

#we
1ps -> "we"

#were
BE_1p_past -> "were"
BE_2s_past -> "were"
BE_2p_past -> "were"
BE_3p_past -> "were"

#which
subclause_conjunction_P -> "which"

#will
WILL -> "will"

#with
preposition_NI -> "with"

#wooden
A_material_adjective -> "wooden"

#you
2ss -> "you"
2so -> "you"
2ps -> "you"
2po -> "you"

#young
A_age_adjective -> "young"

#your
2sp1 -> "your"
2pp1 -> "your"

#yours
2sp2 -> "yours"
2pp2 -> "yours"

#yourself
2sr -> "yourself"

#yourselves
2pr -> "yourselves"






