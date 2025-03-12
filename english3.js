// Generated automatically by nearley, version 2.20.1
// http://github.com/Hardmath123/nearley
(function () {
function id(x) { return x[0]; }

function clean(data) {
let cleaned = data;
for (let index = 0; index < data.length; index++) {
if (data[index] === null || data[index] === ' ') {
	cleaned.splice(index, 1);
}}
return cleaned;
}var grammar = {
    Lexer: undefined,
    ParserRules: [
    {"name": "coordinating_conjunction$string$1", "symbols": [{"literal":"a"}, {"literal":"n"}, {"literal":"d"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "coordinating_conjunction", "symbols": ["coordinating_conjunction$string$1"], "postprocess": id},
    {"name": "coordinating_conjunction$string$2", "symbols": [{"literal":"b"}, {"literal":"u"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "coordinating_conjunction", "symbols": ["coordinating_conjunction$string$2"], "postprocess": id},
    {"name": "coordinating_conjunction$string$3", "symbols": [{"literal":"o"}, {"literal":"r"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "coordinating_conjunction", "symbols": ["coordinating_conjunction$string$3"], "postprocess": id},
    {"name": "subordinating_conjunction$string$1", "symbols": [{"literal":"a"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "subordinating_conjunction", "symbols": ["subordinating_conjunction$string$1"], "postprocess": id},
    {"name": "subordinating_conjunction$string$2", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"a"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "subordinating_conjunction", "symbols": ["subordinating_conjunction$string$2"], "postprocess": id},
    {"name": "subordinating_conjunction$string$3", "symbols": [{"literal":"w"}, {"literal":"h"}, {"literal":"i"}, {"literal":"c"}, {"literal":"h"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "subordinating_conjunction", "symbols": ["subordinating_conjunction$string$3"], "postprocess": id},
    {"name": "infinitive_copula$string$1", "symbols": [{"literal":"b"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "infinitive_copula", "symbols": ["infinitive_copula$string$1"], "postprocess": id},
    {"name": "past_participle_copula$string$1", "symbols": [{"literal":"b"}, {"literal":"e"}, {"literal":"e"}, {"literal":"n"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "past_participle_copula", "symbols": ["past_participle_copula$string$1"], "postprocess": id},
    {"name": "copula$string$1", "symbols": [{"literal":"a"}, {"literal":"m"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "copula", "symbols": ["copula$string$1"], "postprocess": id},
    {"name": "copula$string$2", "symbols": [{"literal":"a"}, {"literal":"r"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "copula", "symbols": ["copula$string$2"], "postprocess": id},
    {"name": "copula$string$3", "symbols": [{"literal":"i"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "copula", "symbols": ["copula$string$3"], "postprocess": id},
    {"name": "copula$string$4", "symbols": [{"literal":"w"}, {"literal":"a"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "copula", "symbols": ["copula$string$4"], "postprocess": id},
    {"name": "copula$string$5", "symbols": [{"literal":"w"}, {"literal":"e"}, {"literal":"r"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "copula", "symbols": ["copula$string$5"], "postprocess": id},
    {"name": "demonstrative$string$1", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"a"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "demonstrative", "symbols": ["demonstrative$string$1"], "postprocess": id},
    {"name": "demonstrative$string$2", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"e"}, {"literal":"s"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "demonstrative", "symbols": ["demonstrative$string$2"], "postprocess": id},
    {"name": "demonstrative$string$3", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"i"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "demonstrative", "symbols": ["demonstrative$string$3"], "postprocess": id},
    {"name": "demonstrative$string$4", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"o"}, {"literal":"s"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "demonstrative", "symbols": ["demonstrative$string$4"], "postprocess": id},
    {"name": "determiner", "symbols": [{"literal":"a"}], "postprocess": id},
    {"name": "determiner$string$1", "symbols": [{"literal":"a"}, {"literal":"n"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "determiner", "symbols": ["determiner$string$1"], "postprocess": id},
    {"name": "determiner$string$2", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "determiner", "symbols": ["determiner$string$2"], "postprocess": id},
    {"name": "determiner$string$3", "symbols": [{"literal":"m"}, {"literal":"y"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "determiner", "symbols": ["determiner$string$3"], "postprocess": id},
    {"name": "determiner$string$4", "symbols": [{"literal":"y"}, {"literal":"o"}, {"literal":"u"}, {"literal":"r"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "determiner", "symbols": ["determiner$string$4"], "postprocess": id},
    {"name": "determiner$string$5", "symbols": [{"literal":"h"}, {"literal":"e"}, {"literal":"r"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "determiner", "symbols": ["determiner$string$5"], "postprocess": id},
    {"name": "determiner$string$6", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"e"}, {"literal":"i"}, {"literal":"r"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "determiner", "symbols": ["determiner$string$6"], "postprocess": id},
    {"name": "determiner$string$7", "symbols": [{"literal":"h"}, {"literal":"i"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "determiner", "symbols": ["determiner$string$7"], "postprocess": id},
    {"name": "determiner$string$8", "symbols": [{"literal":"i"}, {"literal":"t"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "determiner", "symbols": ["determiner$string$8"], "postprocess": id},
    {"name": "determiner$string$9", "symbols": [{"literal":"o"}, {"literal":"u"}, {"literal":"r"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "determiner", "symbols": ["determiner$string$9"], "postprocess": id},
    {"name": "AS$string$1", "symbols": [{"literal":"a"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "AS", "symbols": ["AS$string$1"], "postprocess": id},
    {"name": "DID$string$1", "symbols": [{"literal":"d"}, {"literal":"i"}, {"literal":"d"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "DID", "symbols": ["DID$string$1"], "postprocess": id},
    {"name": "DO$string$1", "symbols": [{"literal":"d"}, {"literal":"o"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "DO", "symbols": ["DO$string$1"], "postprocess": id},
    {"name": "NOT$string$1", "symbols": [{"literal":"n"}, {"literal":"o"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "NOT", "symbols": ["NOT$string$1"], "postprocess": id},
    {"name": "OF$string$1", "symbols": [{"literal":"o"}, {"literal":"f"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "OF", "symbols": ["OF$string$1"], "postprocess": id},
    {"name": "TO$string$1", "symbols": [{"literal":"t"}, {"literal":"o"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "TO", "symbols": ["TO$string$1"], "postprocess": id},
    {"name": "WILL$string$1", "symbols": [{"literal":"w"}, {"literal":"i"}, {"literal":"l"}, {"literal":"l"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "WILL", "symbols": ["WILL$string$1"], "postprocess": id},
    {"name": "WOULD$string$1", "symbols": [{"literal":"w"}, {"literal":"o"}, {"literal":"u"}, {"literal":"l"}, {"literal":"d"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "WOULD", "symbols": ["WOULD$string$1"], "postprocess": id},
    {"name": "present_perfective$string$1", "symbols": [{"literal":"h"}, {"literal":"a"}, {"literal":"v"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "present_perfective", "symbols": ["present_perfective$string$1"], "postprocess": id},
    {"name": "present_perfective$string$2", "symbols": [{"literal":"h"}, {"literal":"a"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "present_perfective", "symbols": ["present_perfective$string$2"], "postprocess": id},
    {"name": "past_perfective$string$1", "symbols": [{"literal":"h"}, {"literal":"a"}, {"literal":"d"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "past_perfective", "symbols": ["past_perfective$string$1"], "postprocess": id},
    {"name": "possessive$string$1", "symbols": [{"literal":"m"}, {"literal":"i"}, {"literal":"n"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "possessive", "symbols": ["possessive$string$1"], "postprocess": id},
    {"name": "possessive$string$2", "symbols": [{"literal":"y"}, {"literal":"o"}, {"literal":"u"}, {"literal":"r"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "possessive", "symbols": ["possessive$string$2"], "postprocess": id},
    {"name": "possessive$string$3", "symbols": [{"literal":"h"}, {"literal":"e"}, {"literal":"r"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "possessive", "symbols": ["possessive$string$3"], "postprocess": id},
    {"name": "possessive$string$4", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"e"}, {"literal":"i"}, {"literal":"r"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "possessive", "symbols": ["possessive$string$4"], "postprocess": id},
    {"name": "possessive$string$5", "symbols": [{"literal":"h"}, {"literal":"i"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "possessive", "symbols": ["possessive$string$5"], "postprocess": id},
    {"name": "possessive$string$6", "symbols": [{"literal":"o"}, {"literal":"u"}, {"literal":"r"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "possessive", "symbols": ["possessive$string$6"], "postprocess": id},
    {"name": "preposition$string$1", "symbols": [{"literal":"a"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "preposition", "symbols": ["preposition$string$1"], "postprocess": id},
    {"name": "preposition$string$2", "symbols": [{"literal":"b"}, {"literal":"y"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "preposition", "symbols": ["preposition$string$2"], "postprocess": id},
    {"name": "preposition$string$3", "symbols": [{"literal":"f"}, {"literal":"o"}, {"literal":"r"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "preposition", "symbols": ["preposition$string$3"], "postprocess": id},
    {"name": "preposition$string$4", "symbols": [{"literal":"f"}, {"literal":"r"}, {"literal":"o"}, {"literal":"m"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "preposition", "symbols": ["preposition$string$4"], "postprocess": id},
    {"name": "preposition$string$5", "symbols": [{"literal":"i"}, {"literal":"n"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "preposition", "symbols": ["preposition$string$5"], "postprocess": id},
    {"name": "preposition$string$6", "symbols": [{"literal":"o"}, {"literal":"f"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "preposition", "symbols": ["preposition$string$6"], "postprocess": id},
    {"name": "preposition$string$7", "symbols": [{"literal":"o"}, {"literal":"n"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "preposition", "symbols": ["preposition$string$7"], "postprocess": id},
    {"name": "preposition$string$8", "symbols": [{"literal":"t"}, {"literal":"o"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "preposition", "symbols": ["preposition$string$8"], "postprocess": id},
    {"name": "preposition$string$9", "symbols": [{"literal":"w"}, {"literal":"i"}, {"literal":"t"}, {"literal":"h"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "preposition", "symbols": ["preposition$string$9"], "postprocess": id},
    {"name": "pronoun", "symbols": [{"literal":"i"}], "postprocess": id},
    {"name": "pronoun$string$1", "symbols": [{"literal":"m"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$1"], "postprocess": id},
    {"name": "pronoun$string$2", "symbols": [{"literal":"w"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$2"], "postprocess": id},
    {"name": "pronoun$string$3", "symbols": [{"literal":"u"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$3"], "postprocess": id},
    {"name": "pronoun$string$4", "symbols": [{"literal":"y"}, {"literal":"o"}, {"literal":"u"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$4"], "postprocess": id},
    {"name": "pronoun$string$5", "symbols": [{"literal":"s"}, {"literal":"h"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$5"], "postprocess": id},
    {"name": "pronoun$string$6", "symbols": [{"literal":"h"}, {"literal":"e"}, {"literal":"r"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$6"], "postprocess": id},
    {"name": "pronoun$string$7", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"e"}, {"literal":"y"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$7"], "postprocess": id},
    {"name": "pronoun$string$8", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"e"}, {"literal":"m"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$8"], "postprocess": id},
    {"name": "pronoun$string$9", "symbols": [{"literal":"h"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$9"], "postprocess": id},
    {"name": "pronoun$string$10", "symbols": [{"literal":"h"}, {"literal":"i"}, {"literal":"m"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$10"], "postprocess": id},
    {"name": "pronoun$string$11", "symbols": [{"literal":"i"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "pronoun", "symbols": ["pronoun$string$11"], "postprocess": id},
    {"name": "interrogative$string$1", "symbols": [{"literal":"w"}, {"literal":"h"}, {"literal":"o"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "interrogative", "symbols": ["interrogative$string$1"], "postprocess": id},
    {"name": "interrogative$string$2", "symbols": [{"literal":"w"}, {"literal":"h"}, {"literal":"a"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "interrogative", "symbols": ["interrogative$string$2"], "postprocess": id},
    {"name": "interrogative$string$3", "symbols": [{"literal":"w"}, {"literal":"h"}, {"literal":"e"}, {"literal":"n"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "interrogative", "symbols": ["interrogative$string$3"], "postprocess": id},
    {"name": "interrogative$string$4", "symbols": [{"literal":"w"}, {"literal":"h"}, {"literal":"e"}, {"literal":"r"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "interrogative", "symbols": ["interrogative$string$4"], "postprocess": id},
    {"name": "interrogative$string$5", "symbols": [{"literal":"w"}, {"literal":"h"}, {"literal":"y"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "interrogative", "symbols": ["interrogative$string$5"], "postprocess": id},
    {"name": "interrogative$string$6", "symbols": [{"literal":"h"}, {"literal":"o"}, {"literal":"w"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "interrogative", "symbols": ["interrogative$string$6"], "postprocess": id},
    {"name": "quantifier$string$1", "symbols": [{"literal":"a"}, {"literal":"l"}, {"literal":"l"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$1"], "postprocess": id},
    {"name": "quantifier$string$2", "symbols": [{"literal":"m"}, {"literal":"o"}, {"literal":"s"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$2"], "postprocess": id},
    {"name": "quantifier$string$3", "symbols": [{"literal":"m"}, {"literal":"a"}, {"literal":"n"}, {"literal":"y"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$3"], "postprocess": id},
    {"name": "quantifier$string$4", "symbols": [{"literal":"s"}, {"literal":"o"}, {"literal":"m"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$4"], "postprocess": id},
    {"name": "quantifier$string$5", "symbols": [{"literal":"f"}, {"literal":"e"}, {"literal":"w"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$5"], "postprocess": id},
    {"name": "quantifier$string$6", "symbols": [{"literal":"n"}, {"literal":"o"}, {"literal":"n"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$6"], "postprocess": id},
    {"name": "quantifier$string$7", "symbols": [{"literal":"o"}, {"literal":"n"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$7"], "postprocess": id},
    {"name": "quantifier$string$8", "symbols": [{"literal":"t"}, {"literal":"w"}, {"literal":"o"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$8"], "postprocess": id},
    {"name": "quantifier$string$9", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"r"}, {"literal":"e"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$9"], "postprocess": id},
    {"name": "quantifier$string$10", "symbols": [{"literal":"f"}, {"literal":"o"}, {"literal":"u"}, {"literal":"r"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$10"], "postprocess": id},
    {"name": "quantifier$string$11", "symbols": [{"literal":"f"}, {"literal":"i"}, {"literal":"v"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$11"], "postprocess": id},
    {"name": "quantifier$string$12", "symbols": [{"literal":"s"}, {"literal":"i"}, {"literal":"x"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$12"], "postprocess": id},
    {"name": "quantifier$string$13", "symbols": [{"literal":"s"}, {"literal":"e"}, {"literal":"v"}, {"literal":"e"}, {"literal":"n"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$13"], "postprocess": id},
    {"name": "quantifier$string$14", "symbols": [{"literal":"e"}, {"literal":"i"}, {"literal":"g"}, {"literal":"h"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$14"], "postprocess": id},
    {"name": "quantifier$string$15", "symbols": [{"literal":"n"}, {"literal":"i"}, {"literal":"n"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$15"], "postprocess": id},
    {"name": "quantifier$string$16", "symbols": [{"literal":"t"}, {"literal":"e"}, {"literal":"n"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "quantifier", "symbols": ["quantifier$string$16"], "postprocess": id},
    {"name": "verb$string$1", "symbols": [{"literal":"g"}, {"literal":"a"}, {"literal":"v"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "verb", "symbols": ["verb$string$1"], "postprocess": id},
    {"name": "infinitive$string$1", "symbols": [{"literal":"g"}, {"literal":"i"}, {"literal":"v"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "infinitive", "symbols": ["infinitive$string$1"], "postprocess": id},
    {"name": "verb$string$2", "symbols": [{"literal":"g"}, {"literal":"i"}, {"literal":"v"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "verb", "symbols": ["verb$string$2"], "postprocess": id},
    {"name": "past_participle$string$1", "symbols": [{"literal":"g"}, {"literal":"i"}, {"literal":"v"}, {"literal":"e"}, {"literal":"n"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "past_participle", "symbols": ["past_participle$string$1"], "postprocess": id},
    {"name": "adjective$string$1", "symbols": [{"literal":"g"}, {"literal":"o"}, {"literal":"o"}, {"literal":"d"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "adjective", "symbols": ["adjective$string$1"], "postprocess": id},
    {"name": "past_participle$string$2", "symbols": [{"literal":"h"}, {"literal":"a"}, {"literal":"d"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "past_participle", "symbols": ["past_participle$string$2"], "postprocess": id},
    {"name": "verb$string$3", "symbols": [{"literal":"h"}, {"literal":"a"}, {"literal":"d"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "verb", "symbols": ["verb$string$3"], "postprocess": id},
    {"name": "infinitive$string$2", "symbols": [{"literal":"h"}, {"literal":"a"}, {"literal":"v"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "infinitive", "symbols": ["infinitive$string$2"], "postprocess": id},
    {"name": "verb$string$4", "symbols": [{"literal":"h"}, {"literal":"a"}, {"literal":"v"}, {"literal":"e"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "verb", "symbols": ["verb$string$4"], "postprocess": id},
    {"name": "noun$string$1", "symbols": [{"literal":"t"}, {"literal":"e"}, {"literal":"s"}, {"literal":"t"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "noun", "symbols": ["noun$string$1"], "postprocess": id},
    {"name": "noun$string$2", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"i"}, {"literal":"n"}, {"literal":"g"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "noun", "symbols": ["noun$string$2"], "postprocess": id},
    {"name": "noun$string$3", "symbols": [{"literal":"t"}, {"literal":"h"}, {"literal":"i"}, {"literal":"n"}, {"literal":"g"}, {"literal":"s"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "noun", "symbols": ["noun$string$3"], "postprocess": id},
    {"name": "adverb$string$1", "symbols": [{"literal":"v"}, {"literal":"e"}, {"literal":"r"}, {"literal":"y"}], "postprocess": function joiner(d) {return d.join('');}},
    {"name": "adverb", "symbols": ["adverb$string$1"], "postprocess": id},
    {"name": "text", "symbols": ["sentence"], "postprocess": id},
    {"name": "text", "symbols": ["nominal_phrase"], "postprocess": id},
    {"name": "sentence", "symbols": ["head", "_", "tail"], "postprocess": (data) => clean(data)},
    {"name": "sentence", "symbols": ["sentence", "_", "prepositional_phrase"], "postprocess": (data) => clean(data)},
    {"name": "sentence", "symbols": ["sentence", "_", "coordinating_conjunction", "_", "sentence"], "postprocess": (data) => clean(data)},
    {"name": "head", "symbols": ["nominal_phrase"], "postprocess": id},
    {"name": "head", "symbols": ["head", "_", "coordinating_conjunction", "_", "head"], "postprocess": (data) => clean(data)},
    {"name": "tail", "symbols": ["verbal"], "postprocess": id},
    {"name": "tail", "symbols": ["verbal", "_", "arguments"], "postprocess": (data) => clean(data)},
    {"name": "tail", "symbols": ["copula_core", "_", "copula_arguments"], "postprocess": (data) => clean(data)},
    {"name": "tail", "symbols": ["tail", "_", "coordinating_conjunction", "_", "tail"], "postprocess": (data) => clean(data)},
    {"name": "copula_arguments", "symbols": ["adjective_phrase"], "postprocess": id},
    {"name": "copula_arguments", "symbols": ["adjectival_AS_phrase"], "postprocess": id},
    {"name": "copula_arguments", "symbols": ["nominal_phrase"], "postprocess": id},
    {"name": "copula_arguments", "symbols": ["demonstrative"], "postprocess": id},
    {"name": "copula_arguments", "symbols": ["prepositional_phrase"], "postprocess": id},
    {"name": "copula_arguments$subexpression$1", "symbols": ["prepositional_phrase"]},
    {"name": "copula_arguments$subexpression$1", "symbols": ["adverb_phrase"]},
    {"name": "copula_arguments", "symbols": ["copula_arguments", "_", "copula_arguments$subexpression$1"], "postprocess": (data) => clean(data)},
    {"name": "arguments", "symbols": ["nominal_phrase"], "postprocess": id},
    {"name": "arguments", "symbols": ["nominal_phrase", "_", "nominal_phrase"], "postprocess": (data) => clean(data)},
    {"name": "arguments", "symbols": ["nominal_phrase", "_", "nominal_phrase", "_", "nominal_phrase"], "postprocess": (data) => clean(data)},
    {"name": "arguments", "symbols": ["arguments", "_", "prepositional_phrases"], "postprocess": (data) => clean(data)},
    {"name": "property_subclause", "symbols": ["copula_base"]},
    {"name": "property_subclause", "symbols": ["verb_base"]},
    {"name": "property_subclause", "symbols": ["sentence"], "postprocess": id},
    {"name": "property_subclause$subexpression$1", "symbols": ["copula_base"]},
    {"name": "property_subclause$subexpression$1", "symbols": ["verb_base"]},
    {"name": "property_subclause$subexpression$1", "symbols": ["sentence"]},
    {"name": "property_subclause", "symbols": ["subordinating_conjunction", "_", "property_subclause$subexpression$1"], "postprocess": (data) => clean(data)},
    {"name": "property_subclause", "symbols": ["subordinating_conjunction", "_", "tail"], "postprocess": (data) => clean(data)},
    {"name": "property_subclause", "symbols": ["property_subclause", "_", "prepositional_phrase"], "postprocess": (data) => clean(data)},
    {"name": "property_subclause", "symbols": ["property_subclause", "_", "coordinating_conjunction", "_", "property_subclause"], "postprocess": (data) => clean(data)},
    {"name": "copula_base", "symbols": ["head", "_", "copula"], "postprocess": (data) => clean(data)},
    {"name": "verb_base", "symbols": ["head", "_", "verbal"], "postprocess": (data) => clean(data)},
    {"name": "adjectival_AS_phrase", "symbols": ["AS", "_", "adjective", "_", "AS", "_", "nominal_phrase"], "postprocess": (data) => clean(data)},
    {"name": "nominal_phrase", "symbols": ["pronoun"], "postprocess": id},
    {"name": "nominal_phrase", "symbols": ["demonstrative"], "postprocess": id},
    {"name": "nominal_phrase", "symbols": ["possessive"], "postprocess": id},
    {"name": "nominal_phrase", "symbols": ["noun_phrase"], "postprocess": id},
    {"name": "nominal_phrase", "symbols": ["noun_phrase", "_", "prepositional_phrase"], "postprocess": (data) => clean(data)},
    {"name": "nominal_phrase", "symbols": ["noun_phrase", "_", "property_subclause"], "postprocess": (data) => clean(data)},
    {"name": "nominal_phrase", "symbols": ["quantifier_phrase", "_", "nominal_phrase"], "postprocess": (data) => clean(data)},
    {"name": "noun_phrase", "symbols": ["noun"], "postprocess": id},
    {"name": "noun_phrase", "symbols": ["adjective_phrase", "_", "noun"], "postprocess": (data) => clean(data)},
    {"name": "noun_phrase", "symbols": ["determiner", "_", "noun"], "postprocess": (data) => clean(data)},
    {"name": "noun_phrase", "symbols": ["determiner", "_", "adjective_phrase", "_", "noun"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["verb"], "postprocess": id},
    {"name": "verbal", "symbols": ["DO", "_", "NOT", "_", "infinitive"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["DID", "_", "NOT", "_", "infinitive"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["WILL", "_", "infinitive"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["WILL", "_", "NOT", "_", "infinitive"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["WOULD", "_", "infinitive"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["WOULD", "_", "NOT", "_", "infinitive"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["present_perfective", "_", "past_participle"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["present_perfective", "_", "NOT", "_", "past_participle"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["past_perfective", "_", "past_participle"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["past_perfective", "_", "NOT", "_", "past_participle"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["adverb_phrase", "_", "verbal"], "postprocess": (data) => clean(data)},
    {"name": "verbal", "symbols": ["verbal", "_", "coordinating_conjunction", "_", "verbal"], "postprocess": (data) => clean(data)},
    {"name": "copula_core", "symbols": ["copula"], "postprocess": id},
    {"name": "copula_core", "symbols": ["copula", "_", "NOT"], "postprocess": (data) => clean(data)},
    {"name": "copula_core", "symbols": ["WILL", "_", "infinitive_copula"], "postprocess": (data) => clean(data)},
    {"name": "copula_core", "symbols": ["WILL", "_", "NOT", "_", "infinitive_copula"], "postprocess": (data) => clean(data)},
    {"name": "copula_core", "symbols": ["WOULD", "_", "infinitive_copula"], "postprocess": (data) => clean(data)},
    {"name": "copula_core", "symbols": ["WOULD", "_", "NOT", "_", "infinitive_copula"], "postprocess": (data) => clean(data)},
    {"name": "copula_core", "symbols": ["present_perfective", "_", "past_participle_copula"], "postprocess": (data) => clean(data)},
    {"name": "copula_core", "symbols": ["present_perfective", "_", "NOT", "_", "past_participle_copula"], "postprocess": (data) => clean(data)},
    {"name": "copula_core", "symbols": ["past_perfective", "_", "past_participle_copula"], "postprocess": (data) => clean(data)},
    {"name": "copula_core", "symbols": ["past_perfective", "_", "NOT", "_", "past_participle_copula"], "postprocess": (data) => clean(data)},
    {"name": "adjective_phrase", "symbols": ["adjective"], "postprocess": id},
    {"name": "adjective_phrase", "symbols": ["adverb_phrase", "_", "adjective"], "postprocess": (data) => clean(data)},
    {"name": "adjective_phrase", "symbols": ["adjective_phrase", "_", "adjective_phrase"], "postprocess": (data) => clean(data)},
    {"name": "adjective_phrase", "symbols": ["adjective_phrase", "_", "coordinating_conjunction", "_", "adjective_phrase"], "postprocess": (data) => clean(data)},
    {"name": "adverb_phrase", "symbols": ["adverb"], "postprocess": id},
    {"name": "adverb_phrase", "symbols": ["adverb_phrase", "_", "adverb"], "postprocess": (data) => clean(data)},
    {"name": "prepositional_phrases", "symbols": ["prepositional_phrase"], "postprocess": id},
    {"name": "prepositional_phrases", "symbols": ["prepositional_phrase", "_", "prepositional_phrases"], "postprocess": (data) => clean(data)},
    {"name": "prepositional_phrase", "symbols": ["preposition", "_", "nominal_phrase"], "postprocess": (data) => clean(data)},
    {"name": "prepositional_phrase", "symbols": ["prepositional_phrase", "_", "coordinating_conjunction", "_", "prepositional_phrase"], "postprocess": (data) => clean(data)},
    {"name": "determiner", "symbols": ["demonstrative"], "postprocess": id},
    {"name": "determiner", "symbols": ["quantifier_phrase"], "postprocess": id},
    {"name": "quantifier_phrase", "symbols": ["quantifier"], "postprocess": id},
    {"name": "quantifier_phrase", "symbols": ["quantifier", "_", "OF"], "postprocess": (data) => clean(data)},
    {"name": "_", "symbols": [{"literal":" "}], "postprocess": id}
]
  , ParserStart: "text"
}
if (typeof module !== 'undefined'&& typeof module.exports !== 'undefined') {
   module.exports = grammar;
} else {
   window.grammar = grammar;
}
})();
