// Generated automatically by nearley, version 2.20.1
// http://github.com/Hardmath123/nearley
(function () {
function id(x) { return x[0]; }

function combine(data, probability) {
let total = probability;
for (let index = 0; index < data.length; index++) {
total *= data[index].likelihood;
}
return total;
}
var grammar = {
    Lexer: undefined,
    ParserRules: [
    {"name": "sentence", "symbols": ["subject", "predicate"], "postprocess":  
        function(data) {
        return {node: {type: "sentence"}, head: data[1].head, probability: 1, likelihood: combine(data, 1), id: data}
        }},
    {"name": "subject", "symbols": ["noun_phrase"], "postprocess":  
        function(data) {
        return {node: {type: "subject"}, head: data[0].head, probability: 1, likelihood: combine(data, 1), id: data}
        }},
    {"name": "predicate", "symbols": ["intransitive_verb"], "postprocess":  
        function(data) {
        return {node: {type: "predicate"}, head: data[0].head, probability: .33,  likelihood: combine(data, .33), id: data}
        }},
    {"name": "predicate", "symbols": ["transitive_verb", "object"], "postprocess":  
        function(data) {
        return {node: {type: "predicate"}, head: data[0].head, probability: .67, likelihood: combine(data, .67), id: data}
        }},
    {"name": "object", "symbols": ["noun_phrase"], "postprocess":  
        function(data) {
        return {node: {type: "object"}, head: data[0].head, probability: 1, likelihood: combine(data, 1), id: data}
        }},
    {"name": "noun_phrase", "symbols": ["article", "noun"], "postprocess":  
        function(data) {
        return {node: {type: "noun phrase"}, head: data[1].head, probability: 1, likelihood: combine(data, 1), id: data}
        }},
    {"name": "intransitive_verb$string$1", "symbols": [{"literal":"s"}, {"literal":"l"}, {"literal":"e"}, {"literal":"e"}, {"literal":"p"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "intransitive_verb", "symbols": ["intransitive_verb$string$1", "_"], "postprocess":  
        function(data) {
        return {node: {type: "verb"}, head: data[0], probability: .49, likelihood: .49, id: data[0]}
        }},
    {"name": "intransitive_verb$string$2", "symbols": [{"literal":"s"}, {"literal":"m"}, {"literal":"i"}, {"literal":"l"}, {"literal":"e"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "intransitive_verb", "symbols": ["intransitive_verb$string$2", "_"], "postprocess":  
        function(data) {
        return {node: {type: "verb"}, head: data[0], probability: .51, likelihood: .51, id: data[0]}
        }},
    {"name": "transitive_verb$string$1", "symbols": [{"literal":"e"}, {"literal":"a"}, {"literal":"t"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "transitive_verb", "symbols": ["transitive_verb$string$1", "_"], "postprocess":  
        function(data) {
        return {node: {type: "verb"}, head: data[0], probability: .35, likelihood: .35, id: data[0]}
        }},
    {"name": "transitive_verb$string$2", "symbols": [{"literal":"l"}, {"literal":"i"}, {"literal":"k"}, {"literal":"e"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "transitive_verb", "symbols": ["transitive_verb$string$2", "_"], "postprocess":  
        function(data) {
        return {node: {type: "verb"}, head: data[0], probability: .65, likelihood: .65, id: data[0]}
        }},
    {"name": "article", "symbols": [{"literal":"a"}, "_"], "postprocess":  
        function(data) {
        return {node: {type: "article"}, head: data[0], probability: .4, likelihood: .4, id: data[0]}
        }},
    {"name": "article$string$1", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "article", "symbols": ["article$string$1", "_"], "postprocess":  
        function(data) {
        return {node: {type: "article"}, head: data[0], probability: .6, likelihood: .6, id: data[0]}
        }},
    {"name": "noun$string$1", "symbols": [{"literal":"c"}, {"literal":"a"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "noun", "symbols": ["noun$string$1", "_"], "postprocess":  
        function(data) {
        return {node: {type: "noun"}, head: data[0], probability: .5, likelihood: .5, id: data[0]}
        }},
    {"name": "noun$string$2", "symbols": [{"literal":"d"}, {"literal":"o"}, {"literal":"g"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "noun", "symbols": ["noun$string$2", "_"], "postprocess":  
        function(data) {
        return {node: {type: "noun"}, head: data[0], probability: .2, likelihood: .2, id: data[0]}
        }},
    {"name": "noun$string$3", "symbols": [{"literal":"p"}, {"literal":"e"}, {"literal":"r"}, {"literal":"s"}, {"literal":"o"}, {"literal":"n"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "noun", "symbols": ["noun$string$3", "_"], "postprocess":  
        function(data) {
        return {node: {type: "noun"}, head: data[0], probability: .2, likelihood: .2, id: data[0]}
        }},
    {"name": "_", "symbols": [{"literal":" "}]}
]
  , ParserStart: "sentence"
}
if (typeof module !== 'undefined'&& typeof module.exports !== 'undefined') {
   module.exports = grammar;
} else {
   window.grammar = grammar;
}
})();
