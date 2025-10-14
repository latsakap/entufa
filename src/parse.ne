@include "parse_dict.ne"

@{%
function clean(data) {
let cleaned = data;
for (let index = 0; index < data.length; index++) {
if (data[index] === null || data[index] === ' ') {
	cleaned.splice(index, 1);
}}
return cleaned;
}

function join(data) {
let joined = "";
for (let index = 0; index < data.length; index++) {
	joined += data[index];
}
return joined;
}
%}

text -> sentence {% id %}
#text -> nominal_phrase {% id %}

sentence -> statement {% id %} | question {% id %} | command {% id %} | exclamation {% id %}

statement -> head _ tail {% (data) => clean(data) %}
#statement -> statement _ prepositional_phrase  {% (data) => clean(data) %}
statement -> statement _ coordinating_conjunction _ statement {% (data) => clean(data) %}

question -> copula_core _ nominal_phrase {% (data) => clean(data) %}
question -> interrogative _ copula_core _ nominal_phrase {% (data) => clean(data) %}
question -> DO _ nominal_phrase _ tail {% (data) => clean(data) %}
question -> DID _ nominal_phrase _ tail {% (data) => clean(data) %}
question -> interrogative _ DO _ nominal_phrase _ tail {% (data) => clean(data) %}
question -> interrogative _ DID _ nominal_phrase _ tail {% (data) => clean(data) %}
question -> copula_core _ nominal_phrase _ copula_arguments {% (data) => clean(data) %}
question -> interrogative _ copula_core _ nominal_phrase {% (data) => clean(data) %}

command -> tail {% id %}

#SENTENCE HEAD

head -> nominal_phrase {% id %}
head -> head _ coordinating_conjunction _ head {% (data) => clean(data) %}

#SENTENCE TAIL

tail -> verb_phrase {% id %}
tail -> verb_phrase _ arguments {% (data) => clean(data) %}
tail -> copula_core {% id %}
tail -> copula_core _ copula_arguments {% (data) => clean(data) %}
tail -> tail _ adverb_phrase {% (data) => clean(data) %}
tail -> tail _ prepositional_phrase {% (data) => clean(data) %}
tail -> prepositional_phrase {% (data) => clean(data) %}
tail -> tail _ coordinating_conjunction _ tail {% (data) => clean(data) %}

#TAIL ARGUMENTS

copula_arguments -> adjective_phrase {% id %}
copula_arguments -> adjectival_AS_phrase {% id %}
copula_arguments -> nominal_phrase {% id %}
copula_arguments -> prepositional_phrase {% id %}
copula_arguments -> copula_arguments _ (prepositional_phrase | adverb_phrase) {% (data) => clean(data) %}

arguments -> nominal_phrase {% id %}
arguments -> nominal_phrase _ nominal_phrase {% (data) => clean(data) %}
arguments -> nominal_phrase _ nominal_phrase _ nominal_phrase {% (data) => clean(data) %}
arguments -> arguments _ prepositional_phrases {% (data) => clean(data) %}

#SUBCLAUSES

property_subclause -> (copula_base | verb_base | sentence | tail) {% id %}
property_subclause -> (subordinating_conjunction | interrogative) _ (copula_base | verb_base | sentence | tail) {% (data) => clean(data) %}
property_subclause -> property_subclause _ prepositional_phrase {% (data) => clean(data) %}
property_subclause -> property_subclause _ coordinating_conjunction _ property_subclause {% (data) => clean(data) %}

copula_base -> head _ copula {% (data) => clean(data) %}
verb_base -> head _ verbal {% (data) => clean(data) %}

nominal_subclause -> tail {% id %}
nominal_subclause -> (subordinating_conjunction | interrogative) _ (copula_base | verb_base | sentence | tail) {% (data) => clean(data) %}

adverbial_subclause -> tail {% id %}

#COMPARATIVE PHRASES

adjectival_AS_phrase -> AS _ adjective _ AS _ nominal_phrase {% (data) => clean(data) %}

#: adverbial_AS_phrase

#(blue hair and) PRONOUNS

#NOUNS

nominal_phrase -> pronoun {% id %}
nominal_phrase -> possessive {% id %}
nominal_phrase -> noun_phrase {% id %}
nominal_phrase -> noun_phrase _ prepositional_phrase {% (data) => clean(data) %}
nominal_phrase -> noun_phrase _ property_subclause {% (data) => clean(data) %}
nominal_phrase -> nominal_phrase _ coordinating_conjunction _ nominal_phrase {% (data) => clean(data) %}

noun_phrase -> noun {% id %}
noun_phrase -> nominal_subclause {% id %}
noun_phrase -> adjective_phrase _ noun {% (data) => clean(data) %}
noun_phrase -> determiner _ noun {% (data) => clean(data) %}
noun_phrase -> determiner _ adjective_phrase _ noun {% (data) => clean(data) %}

#VERBS

verbal -> verb {% id %}
verbal -> adverb_phrase _ verb {% (data) => clean(data) %}

verb_phrase -> verbal {% id %}

verb_phrase -> DO _ NOT _ verbal {% (data) => clean(data) %}
verb_phrase -> DID _ NOT _ verbal {% (data) => clean(data) %}

verb_phrase -> WILL _ verbal {% (data) => clean(data) %}
verb_phrase -> WILL _ NOT _ verbal {% (data) => clean(data) %}
verb_phrase -> WILL _ present_perfective _ verbal {% (data) => clean(data) %}
verb_phrase -> WILL _ NOT _ present_perfective _ verbal {% (data) => clean(data) %}

verb_phrase -> WOULD _ verbal {% (data) => clean(data) %}
verb_phrase -> WOULD _ NOT _ verbal {% (data) => clean(data) %}
verb_phrase -> WOULD _ present_perfective _ verbal {% (data) => clean(data) %}
verb_phrase -> WOULD _ NOT _ present_perfective _ verbal {% (data) => clean(data) %}

verb_phrase -> present_perfective _ verbal {% (data) => clean(data) %}
verb_phrase -> adverb_phrase _ present_perfective _ verbal {% (data) => clean(data) %}

verb_phrase -> past_perfective _ verbal {% (data) => clean(data) %}
verb_phrase -> adverb_phrase _ past_perfective _ verbal {% (data) => clean(data) %}

verb_phrase -> copula_core _ verbal {% (data) => clean(data) %}

verb_phrase -> adverb_phrase _ verbal {% (data) => clean(data) %}
verb_phrase -> verbal _ coordinating_conjunction _ verbal {% (data) => clean(data) %}

#COPULA

copula_core -> copula {% id %}
copula_core -> copula _ NOT {% (data) => clean(data) %}

copula_core -> WILL _ copula {% (data) => clean(data) %}
copula_core -> WILL _ NOT _ copula {% (data) => clean(data) %}

copula_core -> WILL _ present_perfective _ copula {% (data) => clean(data) %}
copula_core -> WILL _ NOT _ present_perfective _ copula {% (data) => clean(data) %}

copula_core -> WOULD _ copula {% (data) => clean(data) %}
copula_core -> WOULD _ NOT _ copula {% (data) => clean(data) %}

copula_core -> WOULD _ present_perfective _ copula {% (data) => clean(data) %}
copula_core -> WOULD _ NOT _ present_perfective _ copula {% (data) => clean(data) %}

copula_core -> present_perfective _ copula {% (data) => clean(data) %}
copula_core -> present_perfective _ NOT _ copula {% (data) => clean(data) %}

copula_core -> past_perfective _ copula {% (data) => clean(data) %}
copula_core -> past_perfective _ NOT _ copula {% (data) => clean(data) %}

#ADJECTIVES

adjective_phrase -> adjective {% id %}
adjective_phrase -> adverb_phrase _ adjective {% (data) => clean(data) %}
adjective_phrase -> adjective_phrase _ adjective_phrase {% (data) => clean(data) %}
adjective_phrase -> adjective_phrase _ coordinating_conjunction _ adjective_phrase {% (data) => clean(data) %}

#ADVERBS

adverb_phrase -> adverb {% id %}
adverb_phrase -> adverb_phrase _ adverb {% (data) => clean(data) %}

adverb -> NOT {% id %}

#PREPOSITIONS

prepositional_phrases -> prepositional_phrase {% id %}
prepositional_phrases -> prepositional_phrase _ prepositional_phrases {% (data) => clean(data) %}

prepositional_phrase -> preposition {% id %}
prepositional_phrase -> preposition _ nominal_phrase {% (data) => clean(data) %}
prepositional_phrase -> nominal_phrase _ postposition {% (data) => clean(data) %}
prepositional_phrase -> prepositional_phrase _ coordinating_conjunction _ prepositional_phrase {% (data) => clean(data) %}

#MISCELLANEOUS

determiner -> quantifier_phrase {% id %}
determiner -> quantifier_phrase _ determiner {% (data) => clean(data) %}
determiner -> determiner _ quantifier_phrase {% (data) => clean(data) %}

noun -> quantifier {% id %}
quantifier_phrase -> quantifier {% id %}
quantifier_phrase -> quantifier _ OF {% (data) => clean(data) %}

_ -> " " {% id %}
