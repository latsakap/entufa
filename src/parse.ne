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

function id(data) {
return data[0];
}
%}

text -> sentence {% (data) => ["text", id(data)] %}
#text -> nominal_phrase  {%(data) => ["text", id(data)] %}

sentence -> statement {% (data) => ["sentence", id(data)] %} 
| question {% (data) => ["sentence", id(data)] %} 
| command {% (data) => ["sentence", id(data)] %}
| exclamatory {% (data) => ["sentence", id(data)] %}

statement -> head _ tail {% (data) => ["statement", clean(data)] %}
#statement -> statement _ prepositional_phrase {% (data) => ["statement", clean(data)] %}
statement -> statement _ coordinating_conjunction _ statement {% (data) => ["statement", clean(data)] %}

question -> copula_core _ nominal_phrase {% (data) => ["question", clean(data)] %}
question -> interrogative _ copula_core _ nominal_phrase {% (data) => ["question", clean(data)] %}
question -> DO _ nominal_phrase _ tail {% (data) => ["question", clean(data)] %}
question -> DID _ nominal_phrase _ tail {% (data) => ["question", clean(data)] %}
question -> interrogative _ DO _ nominal_phrase _ tail {% (data) => ["question", clean(data)] %}
question -> interrogative _ DID _ nominal_phrase _ tail {% (data) => ["question", clean(data)] %}
question -> copula_core _ nominal_phrase _ copula_arguments {% (data) => ["question", clean(data)] %}
question -> interrogative _ copula_core _ nominal_phrase {% (data) => ["question", clean(data)] %}

command -> tail {% (data) => ["command", clean(data)] %}

exclamatory -> exclamation {% (data) => ["exclamatory", clean(data)] %}

#SENTENCE HEAD

head -> nominal_phrase {% (data) => ["head", id(data)] %}
head -> head _ coordinating_conjunction _ head {% (data) => ["head", clean(data)] %}

#SENTENCE TAIL

tail -> verb_phrase {% (data) => ["tail", id(data)] %}
tail -> verb_phrase _ arguments {% (data) => ["tail", clean(data)] %}
tail -> copula_core {% (data) => ["tail", id(data)] %}
tail -> copula_core _ copula_arguments {% (data) => ["tail", clean(data)] %}
tail -> tail _ adverb_phrase {% (data) => ["tail", clean(data)] %}
tail -> tail _ prepositional_phrase {% (data) => ["tail", clean(data)] %}
tail -> tail _ coordinating_conjunction _ tail {% (data) => ["tail", clean(data)] %}

#TAIL ARGUMENTS

copula_arguments -> adjective_phrase {% (data) => ["copula arguments", id(data)] %}
copula_arguments -> adjectival_AS_phrase {% (data) => ["copula arguments", id(data)] %}
copula_arguments -> nominal_phrase {% (data) => ["copula arguments", id(data)] %}
copula_arguments -> prepositional_phrase {% (data) => ["copula arguments", id(data)] %}
copula_arguments -> copula_arguments _ prepositional_phrase {% (data) => ["copula arguments", clean(data)] %}
copula_arguments -> copula_arguments _ adverb_phrase {% (data) => ["copula arguments", clean(data)] %}

arguments -> nominal_phrase {% (data) => ["arguments", id(data)] %}
arguments -> nominal_phrase _ nominal_phrase {% (data) => ["arguments", clean(data)] %}
arguments -> nominal_phrase _ nominal_phrase _ nominal_phrase {% (data) => ["arguments", clean(data)] %}
arguments -> arguments _ prepositional_phrases {% (data) => ["arguments", clean(data)] %}

#SUBCLAUSES

property_subclause -> sentence {% (data) => ["property subclause", id(data)] %} 
property_subclause -> tail {% (data) => ["property subclause", id(data)] %}

property_subclause -> subordinating_conjunction _ sentence {% (data) => ["property subclause", clean(data)] %}
property_subclause -> subordinating_conjunction _ tail {% (data) => ["property subclause", clean(data)] %}
property_subclause -> interrogative _ sentence {% (data) => ["property subclause", clean(data)] %}
property_subclause -> interrogative _ tail {% (data) => ["property subclause", clean(data)] %}

property_subclause -> property_subclause _ prepositional_phrase {% (data) => ["property subclause", clean(data)] %}
property_subclause -> property_subclause _ coordinating_conjunction _ property_subclause {% (data) => ["property subclause", clean(data)] %}

#copula_base -> head _ copula {% (data) => clean(data) %}
#verb_base -> head _ verbal {% (data) => clean(data) %}

nominal_subclause -> tail {% (data) => ["nominal subclause", id(data)] %}
nominal_subclause -> subordinating_conjunction _ sentence {% (data) => ["nominal subclause", clean(data)] %}
nominal_subclause -> subordinating_conjunction _ tail {% (data) => ["nominal subclause", clean(data)] %}
nominal_subclause -> interrogative _ sentence {% (data) => ["nominal subclause", clean(data)] %}
nominal_subclause -> interrogative _ tail {% (data) => ["nominal subclause", clean(data)] %}

adverbial_subclause -> tail {% (data) => ["adverbial subclause", id(data)] %}

#COMPARATIVE PHRASES

adjectival_AS_phrase -> AS _ adjective_phrase _ AS _ nominal_phrase {% (data) => ["AS phrase", clean(data)] %}

#: adverbial_AS_phrase

#(blue hair and) PRONOUNS

#NOUNS

nominal_phrase -> pronoun {% (data) => ["nominal phrase", id(data)] %}
nominal_phrase -> possessive {% (data) => ["nominal phrase", id(data)] %}
nominal_phrase -> noun_phrase {% (data) => ["nominal phrase", id(data)] %}
nominal_phrase -> noun_phrase _ prepositional_phrase {% (data) => ["nominal phrase", clean(data)] %}
nominal_phrase -> noun_phrase _ property_subclause {% (data) => ["nominal phrase", clean(data)] %}
nominal_phrase -> nominal_phrase _ coordinating_conjunction _ nominal_phrase {% (data) => ["nominal phrase", clean(data)] %}

noun_phrase -> noun {% (data) => ["noun phrase", id(data)] %}
noun_phrase -> nominal_subclause {% (data) => ["noun phrase", id(data)] %}
noun_phrase -> adjective_phrase _ noun {% (data) => ["noun phrase", clean(data)] %}
noun_phrase -> determiner _ noun {% (data) => ["noun phrase", clean(data)] %}
noun_phrase -> determiner _ adjective_phrase _ noun {% (data) => ["noun phrase", clean(data)] %}

#VERBS

verbal -> verb {% (data) => ["verbal", id(data)] %}
verbal -> adverb_phrase _ verb {% (data) => ["nominal phrase", clean(data)] %}

verb_phrase -> verbal {% (data) => ["verb phrase", id(data)] %}

verb_phrase -> DO _ NOT _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> DONT _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> DID _ NOT _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> DIDNT _ verbal {% (data) => ["verb phrase", clean(data)] %}

verb_phrase -> WILL _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> WILL _ NOT _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> WONT _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> WILL _ present_perfective _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> WILL _ NOT _ present_perfective _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> WONT _ present_perfective _ verbal {% (data) => ["verb phrase", clean(data)] %}

verb_phrase -> WOULD _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> WOULD _ NOT _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> WOULDNT _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> WOULD _ present_perfective _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> WOULD _ NOT _ present_perfective _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> WOULDNT _ present_perfective _ verbal {% (data) => ["verb phrase", clean(data)] %}

verb_phrase -> present_perfective _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> adverb_phrase _ present_perfective _ verbal {% (data) => ["verb phrase", clean(data)] %}

verb_phrase -> past_perfective _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> adverb_phrase _ past_perfective _ verbal {% (data) => ["verb phrase", clean(data)] %}

verb_phrase -> copula_core _ verbal {% (data) => ["verb phrase", clean(data)] %}

verb_phrase -> adverb_phrase _ verbal {% (data) => ["verb phrase", clean(data)] %}
verb_phrase -> verbal _ coordinating_conjunction _ verbal {% (data) => ["verb phrase", clean(data)] %}

#COPULA

copula_core -> copula {% (data) => ["copula core", id(data)] %}
copula_core -> copula _ NOT {% (data) => ["copula core", clean(data)] %}

copula_core -> WILL _ copula {% (data) => ["copula core", clean(data)] %}
copula_core -> WILL _ NOT _ copula {% (data) => ["copula core", clean(data)] %}

copula_core -> WILL _ present_perfective _ copula {% (data) => ["copula core", clean(data)] %}
copula_core -> WILL _ NOT _ present_perfective _ copula {% (data) => ["copula core", clean(data)] %}

copula_core -> WOULD _ copula {% (data) => ["copula core", clean(data)] %}
copula_core -> WOULD _ NOT _ copula {% (data) => ["copula core", clean(data)] %}

copula_core -> WOULD _ present_perfective _ copula {% (data) => ["copula core", clean(data)] %}
copula_core -> WOULD _ NOT _ present_perfective _ copula {% (data) => ["copula core", clean(data)] %}

copula_core -> present_perfective _ copula {% (data) => ["copula core", clean(data)] %}
copula_core -> present_perfective _ NOT _ copula {% (data) => ["copula core", clean(data)] %}

copula_core -> past_perfective _ copula {% (data) => ["copula core", clean(data)] %}
copula_core -> past_perfective _ NOT _ copula {% (data) => ["copula core", clean(data)] %}

#ADJECTIVES

adjective_phrase -> adjective {% (data) => ["adjective phrase", id(data)] %}
adjective_phrase -> adverb_phrase _ adjective {% (data) => ["adjective phrase", clean(data)] %}
adjective_phrase -> adjective_phrase _ adjective_phrase {% (data) => ["adjective phrase", clean(data)] %}
adjective_phrase -> adjective_phrase _ coordinating_conjunction _ adjective_phrase {% (data) => ["adjective phrase", clean(data)] %}

#ADVERBS

adverb_phrase -> adverb {% (data) => ["adverb phrase", id(data)] %}
adverb_phrase -> adverb_phrase _ adverb {% (data) => ["adverb phrase", clean(data)] %}

#PREPOSITIONS

prepositional_phrases -> prepositional_phrase {% (data) => ["prepositional phrases", id(data)] %}
prepositional_phrases -> prepositional_phrase _ prepositional_phrases {% (data) => ["prepositional phrases", clean(data)] %}

prepositional_phrase -> preposition {% (data) => ["prepositional phrase", id(data)] %}
prepositional_phrase -> preposition _ nominal_phrase {% (data) => ["prepositional phrase", clean(data)] %}
prepositional_phrase -> nominal_phrase _ postposition {% (data) => ["prepositional phrase", clean(data)] %}
prepositional_phrase -> prepositional_phrase _ coordinating_conjunction _ prepositional_phrase {% (data) => ["prepositional phrase", clean(data)] %}

#MISCELLANEOUS

determiner -> quantifier_phrase {% (data) => ["determiner", id(data)] %}
determiner -> quantifier_phrase _ determiner {% (data) => ["determiner", clean(data)] %}
determiner -> determiner _ quantifier_phrase {% (data) => ["determiner", clean(data)] %}

noun -> quantifier {% (data) => ["noun", id(data)] %}
quantifier_phrase -> quantifier {% (data) => ["quantifier phrase", id(data)] %}
quantifier_phrase -> quantifier _ OF {% (data) => ["quantifier phrase", clean(data)] %}

_ -> " " {% id %}
