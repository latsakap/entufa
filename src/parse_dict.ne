#POS #ARROW #WORD #POSTPROCESSOR

coordinating_conjunction -> "and" {%(data)=>["coor.conj.",id(data)]%}
coordinating_conjunction -> "but" {%(data)=>["coor.conj.",id(data)]%}
coordinating_conjunction -> "or" {%(data)=>["coor.conj.",id(data)]%}

subordinating_conjunction -> "that" {% (data) => ["sub.conj.",id(data)]%}
#subordinating_conjunction -> "which" {%id%}

copula -> "be" {%(data)=>["copula",id(data)]%}
copula -> "been" {%(data)=>["copula",id(data)] %}
copula -> "am" {%(data)=>["copula",id(data)]%}
copula -> "are" {%(data)=>["copula",id(data)]%}
copula -> "aren't" {%(data)=>["copula",id(data)]%}
copula -> "is" {%(data)=>["copula",id(data)]%}
copula -> "isn't" {%(data)=>["copula",id(data)]%}
copula -> "was" {%(data) =>["copula",id(data)] %}
copula -> "wasn't" {%(data)=>["copula",id(data)]%}
copula -> "were" {%(data)=>["copula",id(data)]%}
copula -> "weren't" {%(data)=>["copula",id(data)]%}

determiner -> "that" {%(data)=>["determiner",id(data)]%}
determiner -> "these" {%(data)=>["determiner",id(data)]%}
determiner -> "this"  {%(data)=>["determiner",id(data)]%}
determiner -> "those"  {%(data)=>["determiner",id(data)]%}

determiner -> "a" {%(data)=>["determiner",id(data)]%}
determiner -> "an" {%(data)=>["determiner",id(data)]%}
determiner -> "the" {%(data)=>["determiner",id(data)]%}
determiner -> "my" {%(data)=>["determiner",id(data)]%}
determiner -> "your" {%(data)=>["determiner",id(data)]%}
determiner -> "her" {%(data)=>["determiner",id(data)]%}
determiner -> "their" {%(data)=>["determiner",id(data)]%}
determiner -> "his" {%(data)=>["determiner",id(data)]%}
determiner -> "its" {%(data)=>["determiner",id(data)]%}
determiner -> "our" {%(data)=>["determiner",id(data)]%}

AS -> "as" {%(data)=>["AS",id(data)]%}
NOT -> "not" {%(data)=>["NOT",id(data)]%}
OF -> "of" {%(data)=>["OF",id(data)]%}
TO -> "to" {%(data)=>["TO",id(data)]%}

DO -> "did" {%(data)=>["DO",id(data)]%}
DO -> "didn't" {%(data)=>["DO",id(data)]%}
DO -> "do" {%(data)=>["DO",id(data)]%} 
DO -> "does" {%(data)=>["DO",id(data)]%}
DO -> "don't" {%(data)=>["DO",id(data)]%} 
DO -> "doesn't" {%(data)=>["DO",id(data)]%}

aux_verb -> "did" {%(data)=>["aux.verb",id(data)]%}
aux_verb -> "didn't" {%(data)=>["aux.verb",id(data)]%}
aux_verb -> "do" {%(data)=>["aux.verb",id(data)]%} 
aux_verb -> "does" {%(data)=>["aux.verb",id(data)]%}
aux_verb -> "don't" {%(data)=>["aux.verb",id(data)]%} 
aux_verb -> "doesn't" {%(data)=>["aux.verb",id(data)]%}
aux_verb -> "will" {%(data)=>["aux.verb",id(data)]%}
aux_verb -> "won't" {%(data)=>["aux.verb",id(data)]%}
aux_verb -> "would" {%(data)=>["aux.verb",id(data)]%}
aux_verb -> "wouldn't" {%(data)=>["aux.verb",id(data)]%}

adverb -> "not" {%(data)=>["adverb",id(data)]%}

perfective -> "have" {%(data)=>["perfective.",id(data)]%}
perfective -> "haven't" {%(data)=>["perfective",id(data)]%}
perfective -> "has" {%(data)=>["perfective",id(data)]%}
perfective -> "hasn't" {%(data)=>["perfective",id(data)]%}
perfective -> "had" {%(data)=>["perfective",id(data)]%}
perfective -> "hadn't" {%(data) =>["perfective",id(data)]%}

possessive -> "mine" {%(data)=>["possessive",id(data)]%}
possessive -> "yours"  {%(data)=>["possessive",id(data)]%}
possessive -> "hers"  {%(data)=>["possessive",id(data)]%}
possessive -> "theirs"  {%(data)=>["possessive",id(data)]%}
possessive -> "his"  {%(data)=>["possessive",id(data)]%}
possessive -> "ours"  {%(data)=>["possessive",id(data)]%}

preposition -> "at" {%(data)=>["preposition",id(data)]%}
preposition -> "by" {%(data)=>["preposition",id(data)]%}
preposition -> "for" {%(data)=>["preposition",id(data)]%}
preposition -> "from" {%(data)=>["preposition",id(data)]%}
preposition -> "in" {%(data)=>["preposition",id(data)]%}
preposition -> "of" {%(data)=>["preposition",id(data)]%}
preposition -> "on" {%(data)=>["preposition",id(data)]%}
preposition -> "to" {%(data)=>["preposition",id(data)]%}
preposition -> "with" {%(data)=>["preposition",id(data)]%}

pronoun -> "that" {%(data)=>["pronoun",id(data)]%}
pronoun -> "these" {%(data)=>["pronoun",id(data)]%}
pronoun -> "this" {%(data)=>["pronoun",id(data)]%}
pronoun -> "those" {%(data)=>["pronoun",id(data)]%}

pronoun -> "here" {%(data)=>["pronoun",id(data)]%}
adverb -> "here" {%(data)=>["adverb",id(data)]%}
adjective -> "here" {%(data)=>["adjective",id(data)]%}
pronoun -> "there" {%(data)=>["pronoun",id(data)]%}
adjective -> "there" {%(data)=>["adjective",id(data)]%}
adverb -> "there" {%(data)=>["adverb",id(data)]%}

pronoun -> "i" {%(data)=>["pronoun",id(data)]%}
pronoun -> "me" {%(data)=>["pronoun",id(data)]%}
pronoun -> "we" {%(data)=>["pronoun",id(data)]%}
pronoun -> "us" {%(data)=>["pronoun",id(data)]%}
pronoun -> "you" {%(data)=>["pronoun",id(data)]%}
pronoun -> "she" {%(data)=>["pronoun",id(data)]%}
pronoun -> "her" {%(data)=>["pronoun",id(data)]%}
pronoun -> "they" {%(data)=>["pronoun",id(data)]%}
pronoun -> "them" {%(data)=>["pronoun",id(data)]%}
pronoun -> "he" {%(data)=>["pronoun",id(data)]%}
pronoun -> "him" {%(data)=>["pronoun",id(data)]%}
pronoun -> "it" {%(data)=>["pronoun",id(data)]%}

interrogative-> "who" {%(data)=>["interrogative",id(data)]%}
pronoun -> "who" {%(data)=>["pronoun",id(data)]%}
interrogative -> "what" {%(data)=>["interrogative",id(data)]%}
pronoun -> "what" {%(data)=>["pronoun",id(data)]%}
interrogative-> "which" {%(data)=>["interrogative",id(data)]%}
pronoun -> "which" {%(data)=>["pronoun",id(data)]%}
interrogative-> "when" {%(data)=>["interrogative",id(data)]%}
pronoun -> "when" {%(data)=>["pronoun",id(data)]%}
adverb -> "when" {%(data)=>["adverb",id(data)]%}
interrogative-> "where" {%(data)=>["interrogative",id(data)]%}
pronoun -> "where" {%(data)=>["pronoun",id(data)]%}
adverb -> "where" {%(data)=>["adverb",id(data)]%}
interrogative -> "why" {%(data)=>["interrogative",id(data)]%}
pronoun -> "why" {%(data)=>["pronoun",id(data)]%}
adverb -> "why" {%(data)=>["adverb",id(data)]%}
interrogative -> "how" {%(data)=>["interrogative",id(data)]%}
pronoun -> "how" {%(data)=>["pronoun",id(data)]%}
adverb -> "how" {%(data)=>["adverb",id(data)]%}

quantifier -> "all" {%(data)=>["quantifier",id(data)]%}
quantifier -> "most" {%(data)=>["quantifier",id(data)]%}
quantifier -> "many" {%(data)=>["quantifier",id(data)]%}
quantifier -> "some" {%(data)=>["quantifier",id(data)]%}
quantifier -> "few" {%(data)=>["quantifier",id(data)]%}
quantifier -> "none" {%(data)=>["quantifier",id(data)]%}

quantifier -> "zero" {%(data)=>["quantifier",id(data)]%}
quantifier -> "one" {%(data)=>["quantifier",id(data)]%}
quantifier -> "two" {%(data)=>["quantifier",id(data)]%}
quantifier -> "three" {%(data)=>["quantifier",id(data)]%}
quantifier -> "four" {%(data)=>["quantifier",id(data)]%}
quantifier -> "five" {%(data)=>["quantifier",id(data)]%}
quantifier -> "six" {%(data)=>["quantifier",id(data)]%}
quantifier -> "seven" {%(data)=>["quantifier",id(data)]%}
quantifier -> "eight" {%(data)=>["quantifier",id(data)]%}
quantifier -> "nine" {%(data)=>["quantifier",id(data)]%}
quantifier -> "ten" {%(data)=>["quantifier",id(data)]%}



preposition -> "about" {%(data)=>["preposition",id(data)]%}

preposition -> "above" {%(data)=>["preposition",id(data)]%}

preposition -> "across" {%(data)=>["preposition",id(data)]%}

verb -> "act" {%(data)=>["verb",id(data)]%}
copula -> "act" {%(data)=>["copula",id(data)]%}
noun -> "act" {%(data)=>["noun",id(data)]%}
verb -> "acted" {%(data)=>["verb",id(data)]%}
verb -> "acting" {%(data)=>["verb",id(data)]%}
adjective -> "acting" {%(data)=>["adjective",id(data)]%}
noun -> "actor" {%(data)=>["noun",id(data)]%}
noun -> "actors" {%(data)=>["noun",id(data)]%}
verb -> "acts" {%(data)=>["verb",id(data)]%}
noun -> "acts" {%(data)=>["noun",id(data)]%}

verb -> "activate" {%(data)=>["verb",id(data)]%}
verb -> "activated" {%(data)=>["verb",id(data)]%}
adjective -> "activated" {%(data)=>["adjective",id(data)]%}
verb -> "activates" {%(data)=>["verb",id(data)]%}
verb -> "activating" {%(data)=>["verb",id(data)]%}
adjective -> "activating" {%(data)=>["adjective",id(data)]%}
noun -> "activator" {%(data)=>["noun",id(data)]%}
noun -> "activators" {%(data)=>["noun",id(data)]%}
adjective -> "active" {%(data)=>["adjective",id(data)]%}
adverb -> "actively" {%(data)=>["adverb",id(data)]%}
noun -> "activism" {%(data)=>["noun",id(data)]%}
noun -> "activisms" {%(data)=>["noun",id(data)]%}
noun -> "activist" {%(data)=>["noun",id(data)]%}
noun -> "activists" {%(data)=>["noun",id(data)]%}

noun -> "activity" {%(data)=>["noun",id(data)]%}
noun -> "activities" {%(data)=>["noun",id(data)]%}

verb -> "add" {%(data)=>["verb",id(data)]%}
verb -> "added" {%(data)=>["verb",id(data)]%}
adjective -> "added" {%(data)=>["adjective",id(data)]%}
noun -> "adder"  {%(data)=>["noun",id(data)]%}
noun -> "adders"  {%(data)=>["noun",id(data)]%}
verb -> "adding" {%(data)=>["verb",id(data)]%}
noun -> "adding"  {%(data)=>["noun",id(data)]%}
adjective -> "adding" {%(data)=>["adjective",id(data)]%}
noun -> "addition"  {%(data)=>["noun",id(data)]%}
adjective -> "additional" {%(data)=>["adjective",id(data)]%}
adverb -> "additionally" {%(data)=>["adverb",id(data)]%}
noun -> "additions"  {%(data)=>["noun",id(data)]%}
verb -> "adds" {%(data)=>["verb",id(data)]%}

adjective -> "afraid" {%(data)=>["adjective",id(data)]%}

adverb -> "after" {%(data)=>["adverb",id(data)]%}
preposition -> "after" {%(data)=>["preposition",id(data)]%}

adverb -> "again" {%(data)=>["adverb",id(data)]%}

preposition -> "against" {%(data)=>["preposition",id(data)]%}

verb -> "age" {%(data)=>["verb",id(data)]%}
noun -> "age"  {%(data)=>["noun",id(data)]%}
verb -> "aged" {%(data)=>["verb",id(data)]%}
adjective -> "aged" {%(data)=>["adjective",id(data)]%}
verb -> "ages" {%(data)=>["verb",id(data)]%}
noun -> "ages"  {%(data)=>["noun",id(data)]%}
verb -> "aging" {%(data)=>["verb",id(data)]%}
noun -> "aging"  {%(data)=>["noun",id(data)]%}
adjective -> "aging" {%(data)=>["adjective",id(data)]%}

postposition -> "ago" {%(data)=>["postposition",id(data)]%}

verb -> "agree" {%(data)=>["verb",id(data)]%}
adjective -> "agreeable" {%(data)=>["adjective",id(data)]%}
verb -> "agreed" {%(data)=>["verb",id(data)]%}
verb -> "agreeing" {%(data)=>["verb",id(data)]%}
adjective -> "agreeing" {%(data)=>["adjective",id(data)]%}
noun -> "agreement"  {%(data)=>["noun",id(data)]%}
noun -> "agreements"  {%(data)=>["noun",id(data)]%}
adjective -> "agreed" {%(data)=>["adjective",id(data)]%}
verb -> "agrees" {%(data)=>["verb",id(data)]%}

noun -> "air"  {%(data)=>["noun",id(data)]%}
noun -> "airs"  {%(data)=>["noun",id(data)]%}

adjective -> "alone" {%(data)=>["adjective",id(data)]%}
adverb -> "alone" {%(data)=>["adverb",id(data)]%}

preposition -> "along" {%(data)=>["preposition",id(data)]%}

adverb -> "already" {%(data)=>["adverb",id(data)]%}

adverb -> "always" {%(data)=>["adverb",id(data)]%}

verb -> "amount" {%(data)=>["verb",id(data)]%}
noun -> "amount"  {%(data)=>["noun",id(data)]%}
verb -> "amounted" {%(data)=>["verb",id(data)]%}
verb -> "amounting" {%(data)=>["verb",id(data)]%}
verb -> "amounts" {%(data)=>["verb",id(data)]%}
noun -> "amounts"  {%(data)=>["noun",id(data)]%}

verb -> "anger" {%(data)=>["verb",id(data)]%}
noun -> "anger"  {%(data)=>["noun",id(data)]%}
verb -> "angered" {%(data)=>["verb",id(data)]%}
adjective -> "angered" {%(data)=>["adjective",id(data)]%}
verb -> "angering" {%(data)=>["verb",id(data)]%}
adjective -> "angering" {%(data)=>["adjective",id(data)]%}
verb -> "angers" {%(data)=>["verb",id(data)]%}
adverb -> "angrily" {%(data)=>["adverb",id(data)]%}
adjective -> "angry" {%(data)=>["adjective",id(data)]%}

quantifier -> "another" {%(data)=>["quantifier",id(data)]%}

adjective -> "bad" {%(data)=>["adjective",id(data)]%}
adverb -> "badly" {%(data)=>["adverb",id(data)]%}

verb -> "did" {%(data)=>["verb",id(data)]%}
verb -> "do" {%(data)=>["verb",id(data)]%}
noun -> "do"  {%(data)=>["noun",id(data)]%}
noun -> "doer"  {%(data)=>["noun",id(data)]%}
noun -> "doers"  {%(data)=>["noun",id(data)]%}
verb -> "does" {%(data)=>["verb",id(data)]%}
verb -> "doing" {%(data)=>["verb",id(data)]%}
noun -> "doing"  {%(data)=>["noun",id(data)]%}
verb -> "done" {%(data)=>["verb",id(data)]%}
adjective -> "done" {%(data)=>["adjective",id(data)]%}

verb -> "gave" {%(data)=>["verb",id(data)]%}
verb -> "gift" {%(data)=>["verb",id(data)]%}
noun -> "gift" {%(data)=>["noun",id(data)]%}
verb -> "gifted" {%(data)=>["verb",id(data)]%}
adjective -> "gifted" {%(data)=>["adjective",id(data)]%}
verb -> "gifting" {%(data)=>["verb",id(data)]%}
noun -> "gifting" {%(data)=>["noun",id(data)]%}
adjective -> "gifting" {%(data)=>["adjective",id(data)]%}
verb -> "gifts" {%(data)=>["verb",id(data)]%}
noun -> "gifts" {%(data)=>["noun",id(data)]%}
verb -> "give" {%(data)=>["verb",id(data)]%}
verb -> "given" {%(data)=>["verb",id(data)]%}
adjective -> "given" {%(data)=>["adjective",id(data)]%}
noun -> "giver" {%(data)=>["noun",id(data)]%}
verb -> "gives" {%(data)=>["verb",id(data)]%}
verb -> "giving" {%(data)=>["verb",id(data)]%}

adjective -> "good" {%(data)=>["adjective",id(data)]%}

verb -> "had" {%(data)=>["verb",id(data)]%}
verb -> "has" {%(data)=>["verb",id(data)]%}
verb -> "have" {%(data)=>["verb",id(data)]%}
noun -> "haver" {%(data)=>["noun",id(data)]%}
verb -> "having" {%(data)=>["verb",id(data)]%}

noun -> "test" {%(data)=>["noun",id(data)]%}
verb -> "test" {%(data)=>["verb",id(data)]%}
adjective -> "testable" {%(data)=>["adjective",id(data)]%}
verb -> "tested" {%(data)=>["verb",id(data)]%}
adjective -> "tested" {%(data)=>["adjective",id(data)]%}
noun -> "tester" {%(data)=>["noun",id(data)]%}
noun -> "testers" {%(data)=>["noun",id(data)]%}
verb -> "testing" {%(data)=>["verb",id(data)]%}
noun -> "testing" {%(data)=>["noun",id(data)]%}
adjective -> "testing" {%(data)=>["adjective",id(data)]%}
verb -> "tests" {%(data)=>["verb",id(data)]%}
noun -> "tests" {%(data)=>["noun",id(data)]%}

noun -> "thing" {%(data)=>["noun",id(data)]%}
noun -> "things" {%(data)=>["noun",id(data)]%}

adverb -> "very" {%(data)=>["adverb",id(data)]%}

adverb -> "well" {%(data)=>["adverb",id(data)]%}

exclamation -> "wow" {%(data)=>["exclamation",id(data)]%}