@{%
function combine(data, probability) {
let total = probability;
for (let index = 0; index < data.length; index++) {
total *= data[index].likelihood;
}
return total;
}
%}


sentence -> subject predicate {% 
function(data) {
return {node: {type: "sentence"}, head: data[1].head, probability: 1, likelihood: combine(data, 1), id: data}
}%}


subject -> noun_phrase {% 
function(data) {
return {node: {type: "subject"}, head: data[0].head, probability: 1, likelihood: combine(data, 1), id: data}
}%}


predicate -> intransitive_verb {% 
function(data) {
return {node: {type: "predicate"}, head: data[0].head, probability: .33,  likelihood: combine(data, .33), id: data}
}%}

predicate -> transitive_verb object {% 
function(data) {
return {node: {type: "predicate"}, head: data[0].head, probability: .67, likelihood: combine(data, .67), id: data}
}%}

object -> noun_phrase {% 
function(data) {
return {node: {type: "object"}, head: data[0].head, probability: 1, likelihood: combine(data, 1), id: data}
}%}

noun_phrase -> article noun {% 
function(data) {
return {node: {type: "noun phrase"}, head: data[1].head, probability: 1, likelihood: combine(data, 1), id: data}
}%}

intransitive_verb -> "sleeps" _ {% 
function(data) {
return {node: {type: "verb"}, head: data[0], probability: .49, likelihood: .49, id: data[0]}
}%}

intransitive_verb -> "smiles" _ {% 
function(data) {
return {node: {type: "verb"}, head: data[0], probability: .51, likelihood: .51, id: data[0]}
}%}

transitive_verb -> "eats" _ {% 
function(data) {
return {node: {type: "verb"}, head: data[0], probability: .35, likelihood: .35, id: data[0]}
}%}

transitive_verb -> "likes" _ {% 
function(data) {
return {node: {type: "verb"}, head: data[0], probability: .65, likelihood: .65, id: data[0]}
}%}

article -> "a" _ {% 
function(data) {
return {node: {type: "article"}, head: data[0], probability: .4, likelihood: .4, id: data[0]}
}%}

article -> "the" _ {% 
function(data) {
return {node: {type: "article"}, head: data[0], probability: .6, likelihood: .6, id: data[0]}
}%}

noun -> "cat" _ {% 
function(data) {
return {node: {type: "noun"}, head: data[0], probability: .5, likelihood: .5, id: data[0]}
}%}

noun-> "dog" _ {% 
function(data) {
return {node: {type: "noun"}, head: data[0], probability: .2, likelihood: .2, id: data[0]}
}%}

noun-> "person" _ {% 
function(data) {
return {node: {type: "noun"}, head: data[0], probability: .2, likelihood: .2, id: data[0]}
}%}

_ -> " "