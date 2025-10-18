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

function named(data, name) {
let named = data;
named.unshift(name);
return named;
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

statement -> head _ tail2 {% (data) => named(clean(data), "statement") %}
statement -> statement _ coordinating_conjunction _ statement {% (data) => named(clean(data), "statement") %}

#QUESTION

question -> copula_truth_question {% (data) => ["question", id(data)] %}
question -> verb_truth_question {% (data) => ["question", id(data)] %}
question -> copula_content_question {% (data) => ["question", id(data)] %}
question -> verb_content_question {% (data) => ["question", id(data)] %}

copula_truth_question -> CTQ_base {% (data) => ["copula truth question", id(data)] %}
copula_truth_question -> CTQ_base _ copula_arguments {% (data) => named(clean(data), "copula truth question") %}

verb_truth_question -> noun3 {% (data) => ["verb truth question", id(data)] %}
verb_truth_question -> DO _ noun3 {% (data) => ["verb truth question", clean(data)] %}
verb_truth_question -> VTQ_base {% (data) => ["verb truth question", id(data)] %}
verb_truth_question -> VTQ_base _ arguments {% (data) => named(clean(data), "verb truth question") %}

copula_content_question -> interrogative {% (data) => ["copula content question", id(data)] %}
copula_content_question -> CCQ_base {% (data) => ["copula content question", id(data)] %}
copula_content_question -> CCQ_base _ copula_arguments {% (data) => named(clean(data), "copula content question") %}

verb_content_question -> interrogative {% (data) => ["verb content question", id(data)] %}
verb_content_question -> VCQ_base {% (data) => ["verb content question", id(data)] %}
verb_content_question -> VCQ_base _ arguments {% (data) => named(clean(data), "verb content question") %}

#UPDATE THE BELOW SECTION once phrase levels have been elaborated

CTQ_base -> copula3 _ noun3 {% (data) => named(clean(data), "CTQ base") %}
CTQ_base -> perfective1 _ noun3 _ copula1 {% (data) => named(clean(data), "CTQ base") %}
CTQ_base -> aux1 _ noun3 _ copula1 {% (data) => named(clean(data), "CTQ base") %}

VTQ_base -> DO _ noun3 _ verb1 {% (data) => named(clean(data), "VTQ base") %}
VTQ_base -> perfective1 _ noun3 _ verb2 {% (data) => named(clean(data), "VTQ base") %}
VTQ_base -> aux1 _ noun3 _ verb3 {% (data) => named(clean(data), "VTQ base") %}

CCQ_base -> interrogative _ copula3 {% (data) => named(clean(data), "CCQ base") %}

VCQ_base -> interrogative _ DO _ noun3 _ verb1 {% (data) => named(clean(data), "VCQ base") %}
VCQ_base -> interrogative _ perfective1 _ noun3 _ verb2 {% (data) => named(clean(data), "VCQ base") %}
VCQ_base -> interrogative _ aux1 _ noun3 _ verb3 {% (data) => named(clean(data), "VCQ base") %}

#COMMAND & EXCLAMATORY

command -> tail2 {% (data) => ["command", id(data)] %}

exclamatory -> exclamation {% (data) => ["exclamatory", id(data)] %}

#SENTENCE HEAD

head -> noun3 {% (data) => ["head", id(data)] %}
head -> head _ coordinating_conjunction _ head {% (data) => named(clean(data), "head") %}

#SENTENCE TAIL

tail2 -> tail1 {% (data) => ["tail 2", id(data)] %}
tail2 -> tail1 _ end_phrases {% (data) => named(clean(data), "tail 2") %}
tail2 -> tail2 _ coordinating_conjunction _ tail2 {% (data) => named(clean(data), "tail 2") %}

#TAIL CORE

tail1 -> aux1 {% (data) => ["tail 1", id(data)] %}
tail1 -> verb4 {% (data) => ["tail 1", id(data)] %}
tail1 -> verb4 _ arguments {% (data) => named(clean(data), "tail 1") %}
tail1 -> copula1 {% (data) => ["tail 1", id(data)] %}
tail1 -> copula1 _ copula_arguments {% (data) => named(clean(data), "tail 1") %}

#TAIL ARGUMENTS

copula_arguments -> adjective1 {% (data) => ["copula arguments", id(data)] %}
copula_arguments -> adjectival_AS_phrase {% (data) => ["copula arguments", id(data)] %}
copula_arguments -> noun3 {% (data) => ["copula arguments", id(data)] %}
copula_arguments -> preposition1 {% (data) => ["copula arguments", id(data)] %}

arguments -> noun3 {% (data) => ["arguments", id(data)] %}
arguments -> noun3 _ noun3 {% (data) => named(clean(data), "arguments") %}
arguments -> noun3 _ noun3 _ noun3 {% (data) => named(clean(data), "arguments") %}

#END PHRASES

end_phrases -> end_phrase {% (data) => ["end phrases", id(data)] %}
end_phrases -> end_phrase _ end_phrases {% (data) => named(clean(data), "end phrases") %}
end_phrase -> adverb1 {% (data) => ["end phrase", id(data)] %}
end_phrase -> preposition1 {% (data) => ["end phrase", id(data)] %}

#SUBCLAUSES

property_subclause -> statement {% (data) => ["property subclause", id(data)] %} 
property_subclause -> tail2 {% (data) => ["property subclause", id(data)] %}
property_subclause -> subordinating_conjunction _ statement {% (data) => named(clean(data), "property subclause") %}
property_subclause -> subordinating_conjunction _ tail2 {% (data) => named(clean(data), "property subclause") %}
property_subclause -> interrogative _ statement {% (data) => named(clean(data), "property subclause") %}
property_subclause -> interrogative _ tail2 {% (data) => named(clean(data), "property subclause") %}

property_subclause -> property_subclause _ coordinating_conjunction _ property_subclause {% (data) => named(clean(data), "property subclause") %}

nominal_subclause -> tail2 {% (data) => ["nominal subclause", id(data)] %}
nominal_subclause -> subordinating_conjunction _ statement {% (data) => named(clean(data), "nominal subclause") %}
nominal_subclause -> subordinating_conjunction _ tail2 {% (data) => named(clean(data), "nominal subclause") %}
nominal_subclause -> interrogative _ statement {% (data) => named(clean(data), "nominal subclause") %}
nominal_subclause -> interrogative _ tail2 {% (data) => named(clean(data), "nominal subclause") %}

adverbial_subclause -> tail2 {% (data) => ["adverbial subclause", id(data)] %}

#COMPARATIVE PHRASES

adjectival_AS_phrase -> AS _ adjective1 _ AS _ noun3 {% (data) => named(clean(data), "AS phrase") %}

#: adverbial_AS_phrase

#(blue hair and) PRONOUNS

#NOUNS

noun3 -> noun3 _ coordinating_conjunction _ noun3 {% (data) => named(clean(data), "noun 3") %}

noun3 -> noun2 {% (data) => ["noun 3", id(data)] %}
noun3 -> noun3 _ preposition1 {% (data) => named(clean(data), "noun 3") %}
noun3 -> noun3 _ property_subclause {% (data) => named(clean(data), "noun 3") %}

noun2 -> noun1 {% (data) => ["noun 2", id(data)] %}
noun2 -> determiner _ noun1 {% (data) => named(clean(data), "noun 2") %}
noun2 -> pronoun {% (data) => named(clean(data), "noun 2") %}
noun2 -> possessive {% (data) => named(clean(data), "noun 2") %}
noun2 -> nominal_subclause {% (data) => ["noun 1", id(data)] %}

noun1 -> noun {% (data) => ["noun 1", id(data)] %}
noun1 -> adjective1 _ noun {% (data) => named(clean(data), "noun 1") %}

#VERBS

verb4 -> verb4 _ coordinating_conjunction _ verb4 {% (data) => named(clean(data), "verb 4") %}

verb4 -> verb3 {% (data) => ["verb 4", id(data)] %}
verb4 -> aux1 _ verb3 {% (data) => named(clean(data), "verb 4") %}

verb3 -> verb2 {% (data) => ["verb 3", id(data)] %}
verb3 -> perfective1 _ verb2 {% (data) => named(clean(data), "verb 3") %}

verb2 -> verb1 {% (data) => ["verb 2", id(data)] %}
verb2 -> copula3 _ verb1 {% (data) => named(clean(data), "verb 2") %}

verb1 -> verb {% (data) => ["verb 1", id(data)] %}
verb1 -> adverb1 _ verb {% (data) => named(clean(data), "verb 1") %}

aux1 -> aux_verb {% (data) => ["auxiliary 1", id(data)] %}
aux1 -> adverb1 _ aux_verb {% (data) => named(clean(data), "auxiliary 1") %}

perfective1 -> perfective {% (data) => ["perfective 1", id(data)] %}
perfective1 -> adverb1 _ perfective {% (data) => named(clean(data), "perfective 1") %}

#COPULA

copula3 -> copula2 {% (data) => ["copula 3", id(data)] %}
copula3 -> aux1 _ copula2 {% (data) => named(clean(data), "copula 3") %}

copula2 -> copula1 {% (data) => ["copula 2", id(data)] %}
copula2 -> perfective1 _ copula1 {% (data) => named(clean(data), "copula 2") %}

copula1 -> copula {% (data) => ["copula 1", id(data)] %}
copula1 -> adverb1 _ copula {% (data) => named(clean(data), "copula 1") %}

#ADJECTIVES

adjective1 -> adjective {% (data) => ["adjective 1", id(data)] %}
adjective1 -> adverb1 _ adjective {% (data) => named(clean(data), "adjective 1") %}
adjective1 -> adjective1 _ adjective1 {% (data) => named(clean(data), "adjective 1") %}
adjective1 -> adjective1 _ coordinating_conjunction _ adjective1 {% (data) => named(clean(data), "adjective 1") %}

#ADVERBS

adverb1 -> adverb {% (data) => ["adverb 1", id(data)] %}
adverb1 -> adverb1 _ adverb {% (data) => named(clean(data), "adverb 1") %}

#PREPOSITIONS

preposition1+ -> preposition1 {% (data) => ["preposition 1+", id(data)] %}
preposition1+ -> preposition1 _ preposition1+ {% (data) => named(clean(data), "preposition 1+") %}

preposition1 -> preposition {% (data) => ["preposition 1", id(data)] %}
preposition1 -> postposition {% (data) => ["preposition 1", id(data)] %}
preposition1 -> preposition _ noun3 {% (data) => named(clean(data), "preposition 1") %}
preposition1 -> noun3 _ postposition {% (data) => named(clean(data), "preposition 1") %}
preposition1 -> preposition1 _ coordinating_conjunction _ preposition1 {% (data) => named(clean(data), "preposition 1") %}

#MISCELLANEOUS

determiner -> quantifier1 {% (data) => ["determiner", id(data)] %}
determiner -> quantifier1 _ determiner {% (data) => named(clean(data), "determiner") %}
determiner -> determiner _ quantifier1 {% (data) => named(clean(data), "determiner") %}

noun -> quantifier {% (data) => ["noun", id(data)] %}
quantifier1 -> quantifier {% (data) => ["quantifier 1", id(data)] %}
quantifier1 -> quantifier _ OF {% (data) => named(clean(data), "quantifier 1") %}

_ -> " " {% id %}
