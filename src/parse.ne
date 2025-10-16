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

#TEXT

text -> sentence {% (data) => ["text", id(data)] %}

#SENTENCE

sentence -> statement {% (data) => ["sentence", id(data)] %} 
sentence -> question {% (data) => ["sentence", id(data)] %} 
sentence -> command {% (data) => ["sentence", id(data)] %}
sentence -> exclamatory {% (data) => ["sentence", id(data)] %}

#STATEMENT

statement -> head _ tail2 {% (data) => ["statement", clean(data)] %}
statement -> statement _ coordinating_conjunction _ statement {% (data) => ["statement", clean(data)] %}

#QUESTION

question -> copula_truth_question {% (data) => ["question", id(data)] %}
question -> verb_truth_question {% (data) => ["question", id(data)] %}
question -> copula_content_question {% (data) => ["question", id(data)] %}
question -> verb_content_question {% (data) => ["question", id(data)] %}

copula_truth_question -> CTQ_base {% (data) => ["copula truth question", id(data)] %}
copula_truth_question -> CTQ_base _ copula_arguments {% (data) => ["copula truth question", clean(data)] %}

verb_truth_question -> noun2 {% (data) => ["verb truth question", id(data)] %}
verb_truth_question -> DO _ noun2 {% (data) => ["verb truth question", clean(data)] %}
verb_truth_question -> VTQ_base {% (data) => ["verb truth question", id(data)] %}
verb_truth_question -> VTQ_base _ arguments {% (data) => ["verb truth question", clean(data)] %}

copula_content_question -> interrogative {% (data) => ["copula content question", id(data)] %}
copula_content_question -> CCQ_base {% (data) => ["copula content question", id(data)] %}
copula_content_question -> CCQ_base _ copula_arguments {% (data) => ["copula content question", clean(data)] %}

verb_content_question -> interrogative {% (data) => ["verb content question", id(data)] %}
verb_content_question -> VCQ_base {% (data) => ["verb content question", id(data)] %}
verb_content_question -> VCQ_base _ arguments {% (data) => ["verb content question", clean(data)] %}

#UPDATE THE BELOW SECTION once phrase levels have been elaborated

CTQ_base -> copula2 _ noun2 {% (data) => ["CTQ base", clean(data)] %}
CTQ_base -> perfective _ noun2 _ copula1 {% (data) => ["CTQ base", clean(data)] %}
CTQ_base -> aux1 _ noun2 _ copula1 {% (data) => ["CTQ base", clean(data)] %}

VTQ_base -> DO _ noun2 _ verb2 {% (data) => ["VTQ base", clean(data)] %}
VTQ_base -> perfective _ noun2 _ verb2 {% (data) => ["VTQ base", clean(data)] %}
VTQ_base -> aux1 _ noun2 _ verb2 {% (data) => ["VTQ base", clean(data)] %}

CCQ_base -> interrogative _ copula2 {% (data) => ["CCQ base", clean(data)] %}

VCQ_base -> interrogative _ DO _ noun2 _ verb2 {% (data) => ["VCQ base", clean(data)] %}
VCQ_base -> interrogative _ perfective _ noun2 _ verb2 {% (data) => ["VCQ base", clean(data)] %}
VCQ_base -> interrogative _ aux1 _ noun2 _ verb2 {% (data) => ["VCQ base", clean(data)] %}

#COMMAND & EXCLAMATORY

command -> tail2 {% (data) => ["command", clean(data)] %}

exclamatory -> exclamation {% (data) => ["exclamatory", clean(data)] %}

#SENTENCE HEAD

head -> noun2 {% (data) => ["head", id(data)] %}
head -> head _ coordinating_conjunction _ head {% (data) => ["head", clean(data)] %}

#SENTENCE TAIL

tail2 -> tail1 {% (data) => ["tail 2", id(data)] %}
tail2 -> tail1 _ end_phrases {% (data) => ["tail 2", clean(data)] %}

#TAIL CORE

tail1 -> aux1 {% (data) => ["tail 1", id(data)] %}
tail1 -> verb2 {% (data) => ["tail 1", id(data)] %}
tail1 -> verb2 _ arguments {% (data) => ["tail 1", clean(data)] %}
tail1 -> copula1 {% (data) => ["tail 1", id(data)] %}
tail1 -> copula1 _ copula_arguments {% (data) => ["tail 1", clean(data)] %}
tail1 -> tail2 _ coordinating_conjunction _ tail2 {% (data) => ["tail 1", clean(data)] %}

#TAIL ARGUMENTS

copula_arguments -> adjective1 {% (data) => ["copula arguments", id(data)] %}
copula_arguments -> adjectival_AS_phrase {% (data) => ["copula arguments", id(data)] %}
copula_arguments -> noun2 {% (data) => ["copula arguments", id(data)] %}
copula_arguments -> preposition1 {% (data) => ["copula arguments", id(data)] %}

arguments -> noun2 {% (data) => ["arguments", id(data)] %}
arguments -> noun2 _ noun2 {% (data) => ["arguments", clean(data)] %}
arguments -> noun2 _ noun2 _ noun2 {% (data) => ["arguments", clean(data)] %}

#END PHRASES

end_phrases -> end_phrase {% (data) => ["end phrases", id(data)] %}
end_phrases -> end_phrase _ end_phrases {% (data) => ["end phrases", clean(data)] %}
end_phrase -> adverb1 {% (data) => ["end phrase", id(data)] %}
end_phrase -> preposition1 {% (data) => ["end phrase", id(data)] %}

#SUBCLAUSES

property_subclause -> statement {% (data) => ["property subclause", id(data)] %} 
property_subclause -> tail2 {% (data) => ["property subclause", id(data)] %}

property_subclause -> subordinating_conjunction _ statement {% (data) => ["property subclause", clean(data)] %}
property_subclause -> subordinating_conjunction _ tail2 {% (data) => ["property subclause", clean(data)] %}
property_subclause -> interrogative _ statement {% (data) => ["property subclause", clean(data)] %}
property_subclause -> interrogative _ tail2 {% (data) => ["property subclause", clean(data)] %}

#property_subclause -> property_subclause _ preposition1 {% (data) => ["property subclause", clean(data)] %}
property_subclause -> property_subclause _ coordinating_conjunction _ property_subclause {% (data) => ["property subclause", clean(data)] %}

nominal_subclause -> tail2 {% (data) => ["nominal subclause", id(data)] %}
nominal_subclause -> subordinating_conjunction _ statement {% (data) => ["nominal subclause", clean(data)] %}
nominal_subclause -> subordinating_conjunction _ tail2 {% (data) => ["nominal subclause", clean(data)] %}
nominal_subclause -> interrogative _ statement {% (data) => ["nominal subclause", clean(data)] %}
nominal_subclause -> interrogative _ tail2 {% (data) => ["nominal subclause", clean(data)] %}

adverbial_subclause -> tail2 {% (data) => ["adverbial subclause", id(data)] %}

#COMPARATIVE PHRASES

adjectival_AS_phrase -> AS _ adjective1 _ AS _ noun2 {% (data) => ["AS phrase", clean(data)] %}

#: adverbial_AS_phrase

#(blue hair and) PRONOUNS

#NOUNS

noun2 -> pronoun {% (data) => ["noun 2", id(data)] %}
noun2 -> possessive {% (data) => ["noun 2", id(data)] %}
noun2 -> noun1 {% (data) => ["noun 2", id(data)] %}
noun2 -> noun1 _ preposition1 {% (data) => ["noun 2", clean(data)] %}
noun2 -> noun1 _ property_subclause {% (data) => ["noun 2", clean(data)] %}
noun2 -> noun2 _ coordinating_conjunction _ noun2 {% (data) => ["noun 2", clean(data)] %}

noun1 -> noun {% (data) => ["noun 1", id(data)] %}
noun1 -> nominal_subclause {% (data) => ["noun 1", id(data)] %}
noun1 -> adjective1 _ noun {% (data) => ["noun 1", clean(data)] %}
noun1 -> determiner _ noun {% (data) => ["noun 1", clean(data)] %}
noun1 -> determiner _ adjective1 _ noun {% (data) => ["noun 1", clean(data)] %}

#VERBS

verb1 -> verb {% (data) => ["verb 1", id(data)] %}
verb1 -> adverb1 _ verb {% (data) => ["verb 1", clean(data)] %}

verb2 -> verb1 {% (data) => ["verb 2", id(data)] %}
verb2 -> adverb1 _ verb1 {% (data) => ["verb 2", clean(data)] %}

verb2 -> aux1 _ verb1 {% (data) => ["verb 2", clean(data)] %}
verb2 -> adverb1 _ aux1 _ verb1 {% (data) => ["verb 2", clean(data)] %}

verb2 -> perfective _ verb1 {% (data) => ["verb 2", clean(data)] %}
verb2 -> adverb1 _ perfective _ verb1 {% (data) => ["verb 2", clean(data)] %}

verb2 -> copula2 _ verb1 {% (data) => ["verb 2", clean(data)] %}
verb2 -> adverb1 _ copula2 _ verb1 {% (data) => ["verb 2", clean(data)] %}

verb2 -> verb1 _ coordinating_conjunction _ verb1 {% (data) => ["verb 2", clean(data)] %}

aux1 -> aux_verb {% (data) => ["aux. phrase", id(data)] %}
aux1 -> aux_verb _ NOT {% (data) => ["aux. phrase", clean(data)] %}

#COPULA

copula2 -> copula1 {% (data) => ["copula 2", id(data)] %}
copula2 -> adverb1 _ copula1 {% (data) => ["copula 2", clean(data)] %}

copula2 -> copula1 _ NOT {% (data) => ["copula 2", clean(data)] %}
copula2 -> adverb1 _ copula1 _ NOT {% (data) => ["copula 2", clean(data)] %}

copula2 -> aux1 _ copula1 {% (data) => ["copula 2", clean(data)] %}
copula2 -> adverb1 _ aux1 _ copula1 {% (data) => ["copula 2", clean(data)] %}

copula2 -> perfective _ copula1 {% (data) => ["copula 2", clean(data)] %}
copula2 -> aux1 _ perfective _ copula1 {% (data) => ["copula 2", clean(data)] %}
copula2 -> perfective _ NOT _ copula1 {% (data) => ["copula 2", clean(data)] %}
copula2 -> aux1 _ perfective _ NOT _ copula1 {% (data) => ["copula 2", clean(data)] %}
copula2 -> adverb1 _ perfective _ copula1 {% (data) => ["copula 2", clean(data)] %}
copula2 -> aux1 _ adverb1 _ perfective _ copula1 {% (data) => ["copula 2", clean(data)] %}
copula2 -> adverb1 _ perfective _ NOT _ copula1 {% (data) => ["copula 2", clean(data)] %}
copula2 -> aux1 _ adverb1 _ perfective _ NOT _ copula1 {% (data) => ["copula 2", clean(data)] %}

copula1 -> copula {% (data) => ["copula 1", id(data)] %}
copula1 -> adverb1 _ copula {% (data) => ["copula 1", clean(data)] %}

#ADJECTIVES

adjective1 -> adjective {% (data) => ["adjective 1", id(data)] %}
adjective1 -> adverb1 _ adjective {% (data) => ["adjective 1", clean(data)] %}
adjective1 -> adjective1 _ adjective1 {% (data) => ["adjective 1", clean(data)] %}
adjective1 -> adjective1 _ coordinating_conjunction _ adjective1 {% (data) => ["adjective 1", clean(data)] %}

#ADVERBS

adverb1 -> adverb {% (data) => ["adverb 1", id(data)] %}
adverb1 -> adverb1 _ adverb {% (data) => ["adverb 1", clean(data)] %}

#PREPOSITIONS

preposition1+ -> preposition1 {% (data) => ["preposition 1+", id(data)] %}
preposition1+ -> preposition1 _ preposition1+ {% (data) => ["preposition 1+", clean(data)] %}

preposition1 -> preposition {% (data) => ["preposition 1", id(data)] %}
preposition1 -> postposition {% (data) => ["preposition 1", id(data)] %}
preposition1 -> preposition _ noun2 {% (data) => ["preposition 1", clean(data)] %}
preposition1 -> noun2 _ postposition {% (data) => ["preposition 1", clean(data)] %}
preposition1 -> preposition1 _ coordinating_conjunction _ preposition1 {% (data) => ["preposition 1", clean(data)] %}

#MISCELLANEOUS

determiner -> quantifier1 {% (data) => ["determiner", id(data)] %}
determiner -> quantifier1 _ determiner {% (data) => ["determiner", clean(data)] %}
determiner -> determiner _ quantifier1 {% (data) => ["determiner", clean(data)] %}

noun -> quantifier {% (data) => ["noun", id(data)] %}
quantifier1 -> quantifier {% (data) => ["quantifier 1", id(data)] %}
quantifier1 -> quantifier _ OF {% (data) => ["quantifier 1", clean(data)] %}

_ -> " " {% id %}
