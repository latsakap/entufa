@include "core_dictionary3.ne"
@include "main_dictionary3.ne"

@{%
function clean(data) {
let cleaned = data;
for (let index = 0; index < data.length; index++) {
if (data[index] === null || data[index] === ' ') {
	cleaned.splice(index, 1);
}}
return cleaned;
}%}

text -> sentence {% id %}
text -> nominal_phrase {% id %}

sentence -> head _ tail {% (data) => clean(data) %}
sentence -> sentence _ prepositional_phrase  {% (data) => clean(data) %}
sentence -> sentence _ coordinating_conjunction _ sentence {% (data) => clean(data) %}

#SENTENCE HEAD

head -> nominal_phrase {% id %}
head -> head _ coordinating_conjunction _ head {% (data) => clean(data) %}

#SENTENCE TAIL

tail -> verbal {% id %}
tail -> verbal _ arguments {% (data) => clean(data) %}
tail -> copula_core _ copula_arguments {% (data) => clean(data) %}
tail -> tail _ coordinating_conjunction _ tail {% (data) => clean(data) %}

#TAIL ARGUMENTS

copula_arguments -> adjective_phrase {% id %}
copula_arguments -> adjectival_AS_phrase {% id %}
copula_arguments -> nominal_phrase {% id %}
copula_arguments -> demonstrative {% id %}
copula_arguments -> prepositional_phrase {% id %}
copula_arguments -> copula_arguments _ (prepositional_phrase | adverb_phrase) {% (data) => clean(data) %}

arguments -> nominal_phrase {% id %}
arguments -> nominal_phrase _ nominal_phrase {% (data) => clean(data) %}
arguments -> nominal_phrase _ nominal_phrase _ nominal_phrase {% (data) => clean(data) %}
arguments -> arguments _ prepositional_phrases {% (data) => clean(data) %}

#SUBCLAUSES

property_subclause -> copula_base | verb_base | sentence {% id %}
property_subclause -> subordinating_conjunction _ (copula_base | verb_base | sentence) {% (data) => clean(data) %}
property_subclause -> subordinating_conjunction _ tail {% (data) => clean(data) %}
property_subclause -> property_subclause _ prepositional_phrase {% (data) => clean(data) %}
property_subclause -> property_subclause _ coordinating_conjunction _ property_subclause {% (data) => clean(data) %}

copula_base -> head _ copula {% (data) => clean(data) %}
verb_base -> head _ verbal {% (data) => clean(data) %}

#COMPARATIVE PHRASES

adjectival_AS_phrase -> AS _ adjective _ AS _ nominal_phrase {% (data) => clean(data) %}

#: adverbial_AS_phrase

#(blue hair and) PRONOUNS

#NOUNS

nominal_phrase -> pronoun {% id %}
nominal_phrase -> demonstrative {% id %}
nominal_phrase -> possessive {% id %}
nominal_phrase -> noun_phrase {% id %}
nominal_phrase -> noun_phrase _ prepositional_phrase {% (data) => clean(data) %}
nominal_phrase -> noun_phrase _ property_subclause {% (data) => clean(data) %}
nominal_phrase -> quantifier_phrase _ nominal_phrase {% (data) => clean(data) %}

noun_phrase -> noun {% id %}
noun_phrase -> adjective_phrase _ noun {% (data) => clean(data) %}
noun_phrase -> determiner _ noun {% (data) => clean(data) %}
noun_phrase -> determiner _ adjective_phrase _ noun {% (data) => clean(data) %}

#VERBS

verbal -> verb {% id %}
verbal -> DO _ NOT _ infinitive {% (data) => clean(data) %}
verbal -> DID _ NOT _ infinitive {% (data) => clean(data) %}

verbal -> WILL _ infinitive {% (data) => clean(data) %}
verbal -> WILL _ NOT _ infinitive {% (data) => clean(data) %}

verbal -> WOULD _ infinitive {% (data) => clean(data) %}
verbal -> WOULD _ NOT _ infinitive {% (data) => clean(data) %}

verbal -> present_perfective _ past_participle {% (data) => clean(data) %}
verbal -> present_perfective _ NOT _ past_participle {% (data) => clean(data) %}

verbal -> past_perfective _ past_participle {% (data) => clean(data) %}
verbal -> past_perfective _ NOT _ past_participle {% (data) => clean(data) %}

verbal -> adverb_phrase _ verbal {% (data) => clean(data) %}
verbal -> verbal _ coordinating_conjunction _ verbal {% (data) => clean(data) %}

#COPULA

copula_core -> copula {% id %}
copula_core -> copula _ NOT {% (data) => clean(data) %}

copula_core -> WILL _ infinitive_copula {% (data) => clean(data) %}
copula_core -> WILL _ NOT _ infinitive_copula {% (data) => clean(data) %}

copula_core -> WOULD _ infinitive_copula {% (data) => clean(data) %}
copula_core -> WOULD _ NOT _ infinitive_copula {% (data) => clean(data) %}

copula_core -> present_perfective _ past_participle_copula {% (data) => clean(data) %}
copula_core -> present_perfective _ NOT _ past_participle_copula {% (data) => clean(data) %}

copula_core -> past_perfective _ past_participle_copula {% (data) => clean(data) %}
copula_core -> past_perfective _ NOT _ past_participle_copula {% (data) => clean(data) %}

#ADJECTIVES

adjective_phrase -> adjective {% id %}
adjective_phrase -> adverb_phrase _ adjective {% (data) => clean(data) %}
adjective_phrase -> adjective_phrase _ adjective_phrase {% (data) => clean(data) %}
adjective_phrase -> adjective_phrase _ coordinating_conjunction _ adjective_phrase {% (data) => clean(data) %}

#ADVERBS

adverb_phrase -> adverb {% id %}
adverb_phrase -> adverb_phrase _ adverb {% (data) => clean(data) %}

#PREPOSITIONS

prepositional_phrases -> prepositional_phrase {% id %}
prepositional_phrases -> prepositional_phrase _ prepositional_phrases {% (data) => clean(data) %}

prepositional_phrase -> preposition _ nominal_phrase {% (data) => clean(data) %}
prepositional_phrase -> prepositional_phrase _ coordinating_conjunction _ prepositional_phrase {% (data) => clean(data) %}

#MISCELLANEOUS

determiner -> demonstrative {% id %}
determiner -> quantifier_phrase {% id %}

quantifier_phrase -> quantifier {% id %}
quantifier_phrase -> quantifier _ OF {% (data) => clean(data) %}

_ -> " " {% id %}
