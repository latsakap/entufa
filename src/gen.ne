@include "gen_dict.ne"

text -> sentence # | fragment

sentence -> (head_1s _ tail_1s | head_1p _ tail_1p | head_2s _ tail_2s | head_2p _ tail_2p
| head_3sA _ tail_3sA | head_3sI _ tail_3sI | head_3pA _ tail_3pA | head_3pI _ tail_3pI) (_ prepositional_phrase):? (_ (AND | BUT) _ sentence):?

fragment -> noun_phrase_sA | noun_phrase_sI | noun_phrase_pA | noun_phrase_pI

#SENTENCE HEAD

head_3 -> head_3sA | head_3sI | head_3pA | head_3pI
head_3xA -> head_3sA | head_3pA | head_3ssN
head_3xI -> head_3sI | head_3pI

head_1s -> 1ss
head_1p -> 2ps | (head_2s | head_2p | head_3sA | head_3ssN | head_3pA) _ AND _ 1ss 
| (1so | 1ss) _ AND _ (head_2s | head_2p | head_3sA | head_3ssN | head_3pA) 
head_2s -> 2ss 
head_2p -> 2ps | 2ss _ AND _ (head_3sA | head_3pA | 3soN)
head_3sA -> demonstrative_s | 3ssF | 3ssM | 3ssI | noun_phrase_sA
head_3ssN -> 3ssN
head_3sI -> demonstrative_s | 3ssI | noun_phrase_sI 
head_3sC -> demonstrative_s | 3ssI | noun_phrase_uC 
head_3pA -> demonstrative_p | 3ps  | noun_phrase_pA | head_3xA _ AND _ head_3xA
head_3pI -> demonstrative_p | 3ps  | noun_phrase_pI | head_3xI _ AND _ head_3 | head_3 _ AND _ head_3xI

#SENTENCE TAIL

tail_1s -> (1s_copula_tail | 1s_negative_copula_tail | 1s_verb_2o_tail | 1s_negative_verb_2o_tail) (_ (AND | BUT) _ tail_1s):?
tail_1p -> (1p_copula_tail | 1p_negative_copula_tail | 1p_verb_2o_tail | 1p_negative_verb_2o_tail) (_ (AND | BUT) _ tail_1p):?
tail_2s -> (2s_copula_tail | 2s_negative_copula_tail | 2s_verb_2o_tail | 2s_negative_verb_2o_tail) (_ (AND | BUT) _ tail_2s):?
tail_2p -> (2p_copula_tail | 2p_negative_copula_tail | 2p_verb_2o_tail | 2p_negative_verb_2o_tail) (_ (AND | BUT) _ tail_2p):?
tail_3sA -> (3sA_copula_tail | 3sA_negative_copula_tail | 3sA_verb_2o_tail | 3sA_negative_verb_2o_tail) (_ (AND | BUT) _ tail_3sA):?
tail_3ssN -> (3ssN_copula_tail | 3ssN_negative_copula_tail | 3ssN_verb_2o_tail | 3ssN_negative_verb_2o_tail) (_ (AND | BUT) _ tail_3ssN):?
tail_3sI -> (3sI_copula_tail | 3sI_negative_copula_tail | 3sI_verb_2o_tail | 3sI_negative_verb_2o_tail) (_ (AND | BUT) _ tail_3sI):?
tail_3pA -> (3pA_copula_tail | 3pA_negative_copula_tail | 3pA_verb_2o_tail | 3pA_negative_verb_2o_tail) (_ (AND | BUT) _ tail_3pA):?
tail_3pI -> (3pI_copula_tail | 3pI_negative_copula_tail | 3pI_verb_2o_tail | 3pI_negative_verb_2o_tail) (_ (AND | BUT) _ tail_3pI):?

1s_copula_tail -> 1s_copula _ copula_arguments_sA
1p_copula_tail -> 1p_copula _ copula_arguments_pA
2s_copula_tail -> 2s_copula _ copula_arguments_sA
2p_copula_tail -> 2p_copula _ copula_arguments_pA
3sA_copula_tail -> 3s_copula _ copula_arguments_sA
3ssN_copula_tail -> 3p_copula _ copula_arguments_sA
3pA_copula_tail -> 3p_copula _ copula_arguments_pA
3sI_copula_tail -> 3s_copula _ copula_arguments_sI
3pI_copula_tail -> 3p_copula _ copula_arguments_pI

1s_negative_copula_tail -> 1s_negative_copula _ copula_arguments_x
1p_negative_copula_tail -> 1p_negative_copula _ copula_arguments_x
2s_negative_copula_tail -> 2s_negative_copula _ copula_arguments_x
2p_negative_copula_tail -> 2p_negative_copula _ copula_arguments_x
3sA_negative_copula_tail -> 3s_negative_copula _ copula_arguments_x
3ssN_negative_copula_tail -> 3p_negative_copula _ copula_arguments_x
3pA_negative_copula_tail -> 3p_negative_copula _ copula_arguments_x
3sI_negative_copula_tail -> 3s_negative_copula _ copula_arguments_x
3pI_negative_copula_tail -> 3p_negative_copula _ copula_arguments_x

1s_verb_2o_tail -> verb_2o_1s _ verb_2o_arguments
1p_verb_2o_tail -> verb_2o_1p _ verb_2o_arguments
2s_verb_2o_tail -> verb_2o_2s _ verb_2o_arguments
2p_verb_2o_tail -> verb_2o_2p _ verb_2o_arguments
3sA_verb_2o_tail -> verb_2o_3s _ verb_2o_arguments
3ssN_verb_2o_tail -> verb_2o_3p _ verb_2o_arguments
3pA_verb_2o_tail -> verb_2o_3p _ verb_2o_arguments
3sI_verb_2o_tail -> verb_2o_3sI _ verb_2o_arguments
3pI_verb_2o_tail -> verb_2o_3pI _ verb_2o_arguments

1s_negative_verb_2o_tail -> negative_verb_2o_1s _ verb_2o_arguments
1p_negative_verb_2o_tail -> negative_verb_2o_1p _ verb_2o_arguments
2s_negative_verb_2o_tail -> negative_verb_2o_2s _ verb_2o_arguments
2p_negative_verb_2o_tail -> negative_verb_2o_2p _ verb_2o_arguments
3sA_negative_verb_2o_tail -> negative_verb_2o_3s _ verb_2o_arguments
3ssN_negative_verb_2o_tail -> negative_verb_2o_3p _ verb_2o_arguments
3pA_negative_verb_2o_tail -> negative_verb_2o_3p _ verb_2o_arguments
3sI_negative_verb_2o_tail -> negative_verb_2o_3sI _ verb_2o_arguments
3pI_negative_verb_2o_tail -> negative_verb_2o_3pI _ verb_2o_arguments

#TAIL ARGUMENTS

copula_arguments_x ->  adjective_phrase   | adjectival_AS_phrase    | noun_phrase    | pronoun_xo  | demonstrative   | prepositional_phrase_N
copula_arguments_sA -> adjective_phrase   | adjectival_AS_phrase_sA | noun_phrase_sA | pronoun_soA | demonstrative_s | prepositional_phrase_N
copula_arguments_pA -> adjective_phrase   | adjectival_AS_phrase_pA | noun_phrase_pA | pronoun_poA | demonstrative_p | prepositional_phrase_N
copula_arguments_sI -> adjective_phrase_I | adjectival_AS_phrase_sI | noun_phrase_sI | pronoun_soI | demonstrative_s | prepositional_phrase_N
copula_arguments_pI -> adjective_phrase_I | adjectival_AS_phrase_pI | noun_phrase_pI | pronoun_poI | demonstrative_p | prepositional_phrase_N

verb_2o_arguments ->  pronoun_xo | noun_phrase

#SUBCLAUSES

property_subclause_sA -> ((subclause_conjunction_P _):? (copula_base_sA | verb_2o_base) | subclause_conjunction_P _ tail_3sA) (_ prepositional_phrase):? (_ (AND | BUT) _ property_subclause_sA):?
property_subclause_sI -> ((subclause_conjunction_P _):? (copula_base_sI | verb_2o_base) | subclause_conjunction_P _ tail_3sI) (_ prepositional_phrase):? (_ (AND | BUT) _ property_subclause_sI):?
property_subclause_pA -> ((subclause_conjunction_P _):? (copula_base_pA | verb_2o_base) | subclause_conjunction_P _ tail_3pA) (_ prepositional_phrase):? (_ (AND | BUT) _ property_subclause_pA):?
property_subclause_pI -> ((subclause_conjunction_P _):? (copula_base_pI | verb_2o_base) | subclause_conjunction_P _ tail_3pI) (_ prepositional_phrase):? (_ (AND | BUT) _ property_subclause_pI):?

copula_base_sA -> 1s_copula_base | 1s_negative_copula_base | 2s_copula_base | 2s_negative_copula_base 
| 3sA_copula_base | 3sA_negative_copula_base | 3ssN_copula_base | 3ssN_negative_copula_base
copula_base_sI -> 3sI_copula_base | 3sI_negative_copula_base
copula_base_pA -> 1p_copula_base | 1p_negative_copula_base | 2p_copula_base | 2p_negative_copula_base 
| 3pA_copula_base | 3pA_negative_copula_base
copula_base_pI -> 3pI_copula_base | 3pI_negative_copula_base

1s_copula_base -> head_1s _ 1s_copula
1p_copula_base -> head_1p _ 1p_copula
2s_copula_base -> head_2s _ 2s_copula
2p_copula_base -> head_2p _ 2p_copula
3sA_copula_base -> head_3sA _ 3s_copula
3ssN_copula_base -> head_3ssN _ 3p_copula
3pA_copula_base -> head_3pA _ 3p_copula
3sI_copula_base -> head_3sI _ 3s_copula
3pI_copula_base -> head_3pI _ 3p_copula

1s_negative_copula_base -> head_1s _ 1s_negative_copula
1p_negative_copula_base -> head_1p _ 1p_negative_copula
2s_negative_copula_base -> head_2s _ 2s_negative_copula
2p_negative_copula_base -> head_2p _ 2p_negative_copula
3sA_negative_copula_base -> head_3sA _ 3s_negative_copula 
3ssN_negative_copula_base -> head_3ssN _ 3p_negative_copula
3pA_negative_copula_base -> head_3pA _ 3p_negative_copula
3sI_negative_copula_base -> head_3sI _ 3s_negative_copula
3pI_negative_copula_base -> head_3pI _ 3p_negative_copula

verb_2o_base -> 1s_verb_2o_base | 1p_verb_2o_base | 2s_verb_2o_base | 2p_verb_2o_base 
| 3sA_verb_2o_base | 3pA_verb_2o_base | 3sI_verb_2o_base | 3pI_verb_2o_base | 3ssN_verb_2o_base
| 1s_negative_verb_2o_base | 1p_negative_verb_2o_base | 2s_negative_verb_2o_base | 2p_negative_verb_2o_base 
| 3sA_negative_verb_2o_base | 3pA_negative_verb_2o_base | 3sI_negative_verb_2o_base | 3pI_negative_verb_2o_base| 3ssN_negative_verb_2o_base

1s_verb_2o_base -> head_1s _ verb_2o_1s
1p_verb_2o_base -> head_1p _ verb_2o_1p
2s_verb_2o_base -> head_2s _ verb_2o_2s
2p_verb_2o_base -> head_2p _ verb_2o_2p
3sA_verb_2o_base -> head_3sA _ verb_2o_3s 
3ssN_verb_2o_base -> head_3ssN _ verb_2o_3s
3pA_verb_2o_base -> head_3pA _ verb_2o_3p
3sI_verb_2o_base -> head_3sI _ verb_2o_3sI
3pI_verb_2o_base -> head_3pI _ verb_2o_3pI

1s_negative_verb_2o_base -> head_1s _ negative_verb_2o_1s
1p_negative_verb_2o_base -> head_1p _ negative_verb_2o_1p
2s_negative_verb_2o_base -> head_2s _ negative_verb_2o_2s
2p_negative_verb_2o_base -> head_2p _ negative_verb_2o_2p
3sA_negative_verb_2o_base -> head_3sA _ negative_verb_2o_3s 
3ssN_negative_verb_2o_base -> head_3ssN _ negative_verb_2o_3s
3pA_negative_verb_2o_base -> head_3pA _ negative_verb_2o_3p
3sI_negative_verb_2o_base -> head_3sI _ negative_verb_2o_3sI
3pI_negative_verb_2o_base -> head_3pI _ negative_verb_2o_3pI

#COMPARATIVE PHRASES

adjectival_AS_phrase -> adjectival_AS_phrase_sA | adjectival_AS_phrase_sI | adjectival_AS_phrase_pA | adjectival_AS_phrase_pI

adjectival_AS_phrase_sA -> AS_comparative _ adjective_I _ AS_comparative _ noun_phrase | AS_comparative _ adjective_A _ AS_comparative _ noun_phrase_A
adjectival_AS_phrase_pA -> AS_comparative _ adjective_I _ AS_comparative _ noun_phrase | AS_comparative _ adjective_A _ AS_comparative _ noun_phrase_A
adjectival_AS_phrase_sI -> AS_comparative _ adjective_I _ AS_comparative _ noun_phrase
adjectival_AS_phrase_pI -> AS_comparative _ adjective_I _ AS_comparative _ noun_phrase

#: adverbial_AS_phrase

#(blue hair and) PRONOUNS

possessive1 -> 1sp1 | 1pp1 | 2sp1 | 2pp1 | 3spM1 | 3spF1 | 3spN1 | 3spI1 | 3pp1 | noun_phrase possessive_suffix
possessive2 -> 1sp2 | 1pp2 | 2sp2 | 2pp2 | 3spM2 | 3spF2 | 3spN2 | 3spI2 | 3pp2 | noun_phrase possessive_suffix

pronoun_xo -> pronoun_soA | pronoun_soI | pronoun_poA | pronoun_poI
pronoun_so -> pronoun_soA | pronoun_soI
pronoun_po -> pronoun_poA | pronoun_poI

pronoun_soA -> 1so | 2so | 3soF | 3soN | 3soM | 3soI
pronoun_soI -> 3soI
pronoun_poA -> 1po | 2po | 3po
pronoun_poI -> 3po 

#NOUNS

noun_phrase -> noun_phrase_A | noun_phrase_I

noun_phrase_A -> noun_phrase_sA | noun_phrase_pA
noun_phrase_I -> noun_phrase_sI | noun_phrase_pI

noun_phrase_sA -> (quantifier_OF:? (possessive2 | A _ (A_noun_sA | A_adjectives   _ noun_sA) | AN _ (AN_noun_sA | AN_adjectives   _ noun_sA)) 
| determiner_phrase_s _ (adjectives   _):? noun_sA) (_ OF_phrase):? (_ prepositional_phrase_N):? (_ property_subclause_sA):?
| quantifier_OF pronoun_soA | ONE_OF (noun_phrase_pA | pronoun_poA)
noun_phrase_sI -> (possessive2 | A _ (A_noun_sI | A_adjectives_I _ noun_sI) | AN _ (AN_noun_sI | AN_adjectives_I _ noun_sI) 
| determiner_phrase_s _ (adjectives_I _):? noun_sI | (determiner_phrase_u _):? (adjectives_I _):? noun_uI) (_ OF_phrase):? (_ prepositional_phrase_N):? (_ property_subclause_sI):?
| quantifier_OF pronoun_soI | ONE_OF (noun_phrase_pI | pronoun_poI)
noun_phrase_pI -> (possessive2 | (determiner_phrase_p _):? (adjectives_I _):? noun_pI) (_ OF_phrase):? (_ prepositional_phrase_N):? (_ property_subclause_pI):?
| quantifier_OF pronoun_poA 
noun_phrase_pA -> (possessive2 | (determiner_phrase_p _):? (adjectives   _):? noun_pA) (_ OF_phrase):? (_ prepositional_phrase_N):? (_ property_subclause_pA):?
| quantifier_OF pronoun_poI
noun_phrase_uC -> (possessive2 | (determiner_phrase_u _):? (adjectives_C _):? noun_uC) (_ OF_phrase):? (_ prepositional_phrase_N):? (_ property_subclause_sI):?

determiner_phrase_s -> quantifier_OF:? (ONE | THE | possessive1 | demonstrative_s)
determiner_phrase_p -> (quantifier_OF | number_OF):? (ALL | THE | (THE _):? number | possessive1 | demonstrative_p)
determiner_phrase_u -> quantifier_OF:? (THE | possessive1 | demonstrative_s)

noun_sA -> A_noun_sA | AN_noun_sA
noun_pA -> A_noun_pA | AN_noun_pA
noun_sI -> A_noun_sI | AN_noun_sI
noun_pI -> A_noun_pI | AN_noun_pI
noun_uI -> A_noun_uI #| AN_noun_uI
noun_uC -> A_noun_uC #| AN_noun_uC

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

1s_copula -> BE_1s_past  | BE_1s_pres  | WILL _ BE | HAVE_1s_pres _ BE_perf | HAVE_1s_past _ BE_perf
1p_copula -> BE_1p_past  | BE_1p_pres  | WILL _ BE | HAVE_1p_pres _ BE_perf | HAVE_1p_past _ BE_perf
2s_copula -> BE_2s_past  | BE_2s_pres  | WILL _ BE | HAVE_2s_pres _ BE_perf | HAVE_2s_past _ BE_perf
2p_copula -> BE_2p_past  | BE_2p_pres  | WILL _ BE | HAVE_2p_pres _ BE_perf | HAVE_2p_past _ BE_perf
3s_copula -> BE_3s_past  | BE_3s_pres  | WILL _ BE | HAVE_3s_pres _ BE_perf | HAVE_3s_past _ BE_perf
3p_copula -> BE_3p_past  | BE_3p_pres  | WILL _ BE | HAVE_3p_pres _ BE_perf | HAVE_3p_past _ BE_perf

1s_negative_copula -> BE_1s_past _ NOT | BE_1s_pres _ NOT | WILL _ NOT _ BE | HAVE_1s_pres _ NOT _ BE_perf | HAVE_1s_past _ NOT _ BE_perf
1p_negative_copula -> BE_1p_past _ NOT | BE_1p_pres _ NOT | WILL _ NOT _ BE | HAVE_1p_pres _ NOT _ BE_perf | HAVE_1p_past _ NOT _ BE_perf
2s_negative_copula -> BE_2s_past _ NOT | BE_2s_pres _ NOT | WILL _ NOT _ BE | HAVE_2s_pres _ NOT _ BE_perf | HAVE_2s_past _ NOT _ BE_perf
2p_negative_copula -> BE_2p_past _ NOT | BE_2p_pres _ NOT | WILL _ NOT _ BE | HAVE_2p_pres _ NOT _ BE_perf | HAVE_2p_past _ NOT _ BE_perf
3s_negative_copula -> BE_3s_past _ NOT | BE_3s_pres _ NOT | WILL _ NOT _ BE | HAVE_3s_pres _ NOT _ BE_perf | HAVE_3s_past _ NOT _ BE_perf
3p_negative_copula -> BE_3p_past _ NOT | BE_3p_pres _ NOT | WILL _ NOT _ BE | HAVE_3p_pres _ NOT _ BE_perf | HAVE_3p_past _ NOT _ BE_perf

#ADJECTIVES

adjectives -> A_adjectives | AN_adjectives
adjectives_I -> A_adjectives_I | AN_adjectives_I
adjectives_C -> A_adjectives_C | AN_adjectives_C

A_adjectives -> A_adjective_phrase (_ adjective_phrase):?
AN_adjectives -> AN_adjective_phrase (_ adjective_phrase):?
A_adjectives_I -> A_adjective_phrase_IC (_ adjective_phrase_IC):? 
AN_adjectives_I -> AN_adjective_phrase_IC (_ adjective_phrase_IC):? 
A_adjectives_C -> A_adjective_phrase_C (_ adjective_phrase_C):?
AN_adjectives_C -> AN_adjective_phrase_C (_ adjective_phrase_C):? 

adjective_phrase -> adjective_phrase_A | adjective_phrase_I | adjective_phrase_C

adjective_phrase_IC -> adjective_phrase_I | adjective_phrase_C

adjective_phrase_A -> A_adjective_phrase_A | AN_adjective_phrase_A
adjective_phrase_I -> A_adjective_phrase_I | AN_adjective_phrase_I
adjective_phrase_C -> A_adjective_phrase_C | AN_adjective_phrase_C

A_adjective_phrase -> A_adjective_phrase_A | A_adjective_phrase_I | A_adjective_phrase_C
AN_adjective_phrase -> AN_adjective_phrase_A | AN_adjective_phrase_I | AN_adjective_phrase_C

A_adjective_phrase_IC -> A_adjective_phrase_I | A_adjective_phrase_C
AN_adjective_phrase_IC -> AN_adjective_phrase_I | AN_adjective_phrase_C

A_adjective_phrase_A -> A_adjective_A  | A_adverb _ adjective_A 
A_adjective_phrase_A -> A_adjective_phrase_A _ AND _ adjective_phrase | A_adjective_phrase _ AND _ adjective_phrase_A
 
A_adjective_phrase_I -> A_adjective_I | A_adverb _ adjective_I
A_adjective_phrase_I -> A_adjective_phrase_I _ AND _ adjective_phrase_IC | A_adjective_phrase_IC _ AND _ adjective_phrase_I

A_adjective_phrase_C -> A_adjective_C  | A_adverb _ adjective_C
A_adjective_phrase_C -> A_adjective_phrase_C _ AND _ adjective_phrase_C

AN_adjective_phrase_A -> AN_adjective_A  | AN_adverb _ adjective_A
AN_adjective_phrase_A -> AN_adjective_phrase_A _ AND _ adjective_phrase | AN_adjective_phrase _ AND _ adjective_phrase_A

AN_adjective_phrase_I -> AN_adjective_I | AN_adverb _ adjective_I
AN_adjective_phrase_I -> AN_adjective_phrase_I _ AND _ adjective_phrase_IC | AN_adjective_phrase_IC _ AND _ adjective_phrase_I

AN_adjective_phrase_C -> AN_adjective_C  | AN_adverb _ adjective_C
AN_adjective_phrase_C -> AN_adjective_phrase_C _ AND _ adjective_phrase_C

adjective -> adjective_A | adjective_I | adjective_C

adjective_A -> A_adjective_A | AN_adjective_A
adjective_I -> A_adjective_I | AN_adjective_I
adjective_C -> A_adjective_C | AN_adjective_C

A_adjective -> A_adjective_A | A_adjective_I | A_adjective_C
AN_adjective -> AN_adjective_A | AN_adjective_I | AN_adjective_C

A_adjective_A -> "smart" | "friendly"
A_adjective_I -> "green" | "tall"  | "pretty"
A_adjective_C -> "good"
AN_adjective_A -> "energetic" | "angry" 
AN_adjective_I -> "orange" 
AN_adjective_C -> "amazing"

#ADVERBS

adverb -> A_adverb | AN_adverb

A_adverb -> "very" | "mildly" 
AN_adverb -> "unusually" | "actually"

#PREPOSITIONS

OF_phrase -> OF _ (noun_phrase | pronoun_xo)

prepositional_phrase -> prepositional_phrase_N | prepositional_phrase_V

prepositional_phrase_N -> preposition_N _ (noun_phrase | pronoun_xo)

prepositional_phrase_V -> preposition_V _ (noun_phrase | pronoun_xo)

preposition_N -> preposition_ND | preposition_NI
preposition_V -> preposition_VD #| preposition_VI

#MISCELLANEOUS

demonstrative -> demonstrative_p | demonstrative_s

quantifier_OF -> quantifier _ OF _ | ALL _
number_OF -> number _ OF _
ONE_OF -> ONE _ OF _

#whitespace
_ -> " "
